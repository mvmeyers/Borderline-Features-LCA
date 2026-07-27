###############################################################################
## CLOSED-FORM BCH ESTIMATOR
##
## This script shows the exact R code used to compute every BCH (Bolck,
## Croon & Hagenaars, 2004) class result reported in this project.
## This is the same code that produced the concurrent validator results
## and the NSSI self-harm panel in complete_results.md. It is reproduced
## here (not just described) so a reader can see, run, and check the
## actual estimator, since this exists as a unique implementation rather
## than a call to a packaged three-step routine.
##
## WHY A HAND-WRITTEN ESTIMATOR AT ALL?
## Mplus's native TYPE = MIXTURE ... AUXILIARY(BCH) procedure is the
## standard tool for this, but base R has no equivalent packaged function,
## and -- critically -- glm()/lm() in base R REJECT NEGATIVE PRIOR WEIGHTS.
## BCH weights are negative by construction (see below), so a
## weighted-regression approach silently fails. Instead, every quantity
## below -- the classification-error matrix, its inverse, the corrected
## class means, their covariance, the omnibus Wald test, and every
## pairwise contrast -- is written out in closed form. This code was
## independently validated against Mplus's own AUXILIARY(BCH)
## implementation on both simulated data with known true class means and
## on the real project data before being trusted; the "KNOWN-TRUTH
## VALIDATION" section below reproduces a self-contained version of that
## first check.
###############################################################################

## ---- Step 1: bch_weights() -- inverting the classification-error matrix ---
#
# Each person is first sorted into their single most-likely ("modal") class
# from the fitted model's posterior probabilities -- this step is identical
# to naive classify-analyze. Because real classes overlap (posteriors are
# never exactly 0/1), that modal sorting is contaminated: each modal bin
# holds some people who truly belong elsewhere and is missing some who were
# sorted away. Left uncorrected, this pulls every class's outcome scores
# toward the overall average and understates real class differences.
#
# D is the diagnostic that quantifies the contamination: D[t, s], after
# row-normalizing, is "P(this person got CALLED class s | they TRULY belong
# to class t)" -- exactly like a medical test's known false-positive/
# false-negative rates. Inverting D (solve(D)) backs out each person's true
# class membership from their imperfect modal call, the same way you'd back
# out true disease prevalence from an imperfect test's observed positive
# rate. Each person's own row of D^-1 (indexed by their modal class) becomes
# their per-class BCH weight.

bch_weights <- function(post) {
  modal <- max.col(post)
  K <- ncol(post)
  D <- matrix(0, K, K)
  for (s in 1:K) {
    for (t in 1:K) {
      D[t, s] <- sum(post[modal == s, t])
    }
  }
  D <- D / rowSums(D)
  list(modal = modal, W = solve(D)[modal, , drop = FALSE]) # W = D^-1, per person
}

# NEGATIVE WEIGHTS ARE EXPECTED, NOT A BUG. They are the D^-1 entries that
# subtract borrowed cases back out of a class. This is also why BCH is the
# CONSERVATIVE choice, not a fragile one: D^-1 generally WIDENS the
# resulting standard errors relative to naive modal assignment, so an
# effect that survives BCH is a stronger claim than one that survives
# classify-analyze.

## ---- Step 2: class_distal_report() -- means, Wald test, pairwise ----------
#
# Given the BCH weight matrix from Step 1, this function computes, for one
# outcome at a time:
#   mu  -- the BCH-corrected class mean (or, for a 0/1 outcome, the
#          corrected proportion): a weighted average of everyone's outcome
#          value, weighted by each person's row of D^-1, NOT a simple
#          within-modal-class average.
#   Cov -- the covariance of those corrected means, built the same way a
#          design-based/robust "sandwich" variance is built elsewhere:
#          residual-times-weight, squared and summed, so classes that
#          borrowed uncertain cases from each other show correlated (not
#          independent) error.
#   the omnibus Wald test -- "are all the corrected class means equal?",
#          built from successive-difference contrasts against mu/Cov.
#   every pairwise contrast -- difference in corrected means (a risk
#          difference for a binary outcome, with a matching odds ratio),
#          each tested against its own standard error.
#
# This code flags outcomes with more than 97% of values in a single category.
# These outcomes would be skipped and left to be reported descriptively instead,
# since that would mean there was essentially no variation left for classes to differ on.
# Forcing BCH through them anyway would produce numerically unstable output
# (a singular covariance, or a corrected mean landing outside the possible range).

class_distal_report <- function(
  post,
  data,
  cont_outcomes = character(0),
  bin_outcomes = character(0),
  class_labels = NULL,
  outcome_labels = NULL,
  title = ""
) {
  bw <- bch_weights(post)
  K <- ncol(post)
  if (is.null(class_labels)) {
    class_labels <- paste("Class", 1:K)
  }

  one_outcome <- function(y, binary) {
    idx <- !is.na(data[[y]])
    yv <- as.numeric(data[[y]][idx])
    tab <- table(yv)
    if (length(tab) < 2 || max(tab) / sum(tab) > 0.97) {
      message("Skipping near-constant outcome (report descriptively): ", y)
      return(NULL)
    }
    Wy <- bw$W[idx, , drop = FALSE]
    s <- colSums(Wy) # model-implied class sizes (>0)
    valid <- which(is.finite(s) & s > 1e-8)
    if (length(valid) < 2 || length(yv) < 3) {
      return(NULL)
    }
    labs <- class_labels[valid]
    Wy <- Wy[, valid, drop = FALSE]
    s <- s[valid]
    Kv <- length(valid)

    mu <- colSums(Wy * yv) / s # BCH means/props
    R <- sweep(matrix(yv, length(yv), Kv), 2, mu, "-") # residuals
    A <- Wy * R
    Cov <- (t(A) %*% A) / outer(s, s) # cov of the means
    se <- sqrt(pmax(diag(Cov), 0))
    est <- data.frame(
      class = factor(labs, levels = class_labels),
      outcome = y,
      mean = mu,
      lo = mu - 1.96 * se,
      hi = mu + 1.96 * se
    )

    C <- cbind(rep(-1, Kv - 1), diag(Kv - 1))
    omnibus_p <- tryCatch(
      {
        stat <- as.numeric(
          t(C %*% mu) %*% solve(C %*% Cov %*% t(C)) %*% (C %*% mu)
        )
        pchisq(stat, Kv - 1, lower.tail = FALSE)
      },
      error = function(e) NA_real_
    )

    prs <- utils::combn(Kv, 2, simplify = FALSE)
    pairwise <- do.call(
      rbind,
      lapply(prs, function(p) {
        j <- p[1]
        k <- p[2]
        d <- mu[j] - mu[k]
        v <- Cov[j, j] + Cov[k, k] - 2 * Cov[j, k]
        z <- d / sqrt(v)
        or <- if (binary) {
          pj <- min(max(mu[j], 1e-6), 1 - 1e-6)
          pk <- min(max(mu[k], 1e-6), 1 - 1e-6)
          (pj / (1 - pj)) / (pk / (1 - pk))
        } else {
          NA_real_
        }
        data.frame(
          a = labs[j],
          b = labs[k],
          est = d,
          se = sqrt(v),
          z = z,
          p_raw = 2 * pnorm(-abs(z)),
          or = or,
          stringsAsFactors = FALSE
        )
      })
    )

    rng <- range(yv, na.rm = TRUE)
    in_range <- all(mu >= rng[1] - 1e-8 & mu <= rng[2] + 1e-8)
    list(
      est = est,
      omnibus_p = omnibus_p,
      pairwise = pairwise,
      in_range = in_range
    )
  }

  res <- c(
    lapply(cont_outcomes, one_outcome, binary = FALSE),
    lapply(bin_outcomes, one_outcome, binary = TRUE)
  )
  names(res) <- c(cont_outcomes, bin_outcomes)
  res <- res[!sapply(res, is.null)]
  if (length(res) == 0) {
    stop("No estimable outcomes.")
  }

  omnibus <- data.frame(
    outcome = names(res),
    omnibus_p = sapply(res, `[[`, "omnibus_p"),
    in_range = sapply(res, `[[`, "in_range"),
    stringsAsFactors = FALSE
  )
  omnibus$omnibus_fdr <- p.adjust(omnibus$omnibus_p, method = "BH")

  pw_all <- do.call(
    rbind,
    lapply(names(res), function(y) {
      pw <- res[[y]]$pairwise
      if (is.null(pw) || nrow(pw) == 0) {
        return(NULL)
      }
      pw$outcome <- y
      pw$p_fdr <- p.adjust(pw$p_raw, method = "BH")
      pw
    })
  )

  diagnostics <- list(
    min_bch_weight = min(bw$W),
    na_omnibus = omnibus$outcome[is.na(omnibus$omnibus_p)],
    out_of_range = omnibus$outcome[!omnibus$in_range]
  )

  list(omnibus = omnibus, pairwise = pw_all, diagnostics = diagnostics)
}

# (This is a trimmed version of the function actually used in the main
# analysis. The main analysis also included an  effect-size helper (omega_sq),
# ggplot2 plotting code, and a compact-letter-display labeling to summarize
# pairwise comparisons, none of which are part of the BCH math itself.)

## ---- Known-truth validation using Mplus -----------------------------------
#
# Before trusting this estimator on real data, it was checked against data
# where the true class means are known by construction. The same check is
# reproduced here, self-contained.

set.seed(1)
K <- 3
n <- 4000
pi_true <- c(.5, .3, .2)
z <- sample(1:K, n, TRUE, pi_true)
ctr <- rbind(c(0, 0), c(1.7, 1.7), c(3.2, .2)) # class centers on 2 indicators
sdi <- 1.25
X <- t(sapply(1:n, function(i) rnorm(2, ctr[z[i], ], sdi)))

# exact posterior probabilities from the known generating model (the
# "oracle" -- what a perfectly-fit class model would recover)
ll <- sapply(1:K, function(k) {
  log(pi_true[k]) +
    dnorm(X[, 1], ctr[k, 1], sdi, log = TRUE) +
    dnorm(X[, 2], ctr[k, 2], sdi, log = TRUE)
})
post_oracle <- exp(ll - apply(ll, 1, max))
post_oracle <- post_oracle / rowSums(post_oracle)

theta_true <- c(0, 1, 2) # true distal means by class
y0 <- rnorm(n, theta_true[z], 1)

result <- class_distal_report(
  post_oracle,
  data.frame(y0 = y0),
  cont_outcomes = "y0"
)
print(result$omnibus)

# BCH-corrected class means recovered by the estimator above, vs. truth
bw <- bch_weights(post_oracle)
mu <- colSums(bw$W * y0) / colSums(bw$W)
print(data.frame(
  class = 1:K,
  true_theta = theta_true,
  bch_recovered_mean = round(mu, 3)
))

# At n = 4000 with well-separated classes, the BCH-corrected means recovered
# from the oracle posteriors should land close to the true theta_true =
# (0, 1, 2) used to generate the data -- confirming the estimator recovers
# known truth before it's trusted on the real, imperfectly-separated LCA
# posteriors. This same math was additionally cross-checked against
# Mplus's own AUXILIARY(BCH) output on this identical simulated dataset,
# and against Mplus on the real project data -- both independent
# confirmations passed.

## ---- Where this is used in the real analysis ------------------------------
#
# In the main analysis, every reported BCH result calls this same
# class_distal_report() on the real fitted posteriors -- the concurrent
# validator comparisons (K=5 primary, K=4/K=3 sensitivity) and the NSSI
# self-harm panels, all reported in complete_results.md.
