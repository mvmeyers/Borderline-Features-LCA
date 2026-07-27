`Complete Results`

> **Pre-relabel snapshot (as of 2026-07-21):** class NUMBERS in this file
> predate the 2026-07-21 canonical class relabel (Class 1 = lowest
> mean item-endorsement = "Minimal Features", every K —
> `decisions_log.md` §15). The findings per class are still correct; only
> which number labels which class has changed. See §15 for the old→new
> mapping table before citing a specific "Class N" from this file.

This document contains the full statistical results supporting the poster,
matching the scope of `detailed_methods.md`: the K=5 primary model and the
K=3/K=4 sensitivity solutions, each with concurrent validator (irritability,
aggression, impulsivity, functioning, state mood) and NSSI self-harm
results. Binary outcomes (NSSI-any, sex) are reported with test statistics
and p-values only; no effect size is calculated for them here.

**Sample:** N = 439 in the PGBI-elevated subsample; N = 435 complete-case
on the 8 SCID-II identity items (the analytic sample for every class model
below). The NSSI self-harm analysis uses a smaller, concurrently-matched
subsample (N = 310); see §2.6/§3.4/§4.4.

---

## 1. Model enumeration and fit

`poLCA`, `nrep = 200`, `maxiter = 5000`, `tol = 1e-8`.

| K | logLik | npar | AIC | BIC | aBIC | CAIC | Entropy | Smallest class (model-implied) |
|---|--------|------|-----|-----|------|------|---------|----------|
| 1 | -1800.131 | 8 | 3616.262 | 3648.865 | 3623.477 | 3656.865 | — | 100.0% |
| 2 | -1480.726 | 17 | 2995.451 | 3064.732 | 3010.783 | 3081.732 | 0.881 | 25.0% |
| 3 | -1455.212 | 26 | 2962.423 | 3068.382 | 2985.872 | 3094.382 | 0.794 | 17.3% |
| 4 | -1436.901 | 35 | 2943.802 | 3086.439 | 2975.367 | 3121.439 | 0.764 | 9.3% |
| **5** | **-1420.617** | **44** | **2929.235** | 3108.550 | **2968.917** | 3152.550 | 0.790 | 8.1% |
| 6 | -1414.349 | 53 | 2934.697 | 3150.690 | 2982.497 | 3203.690 | 0.823 | 1.0% |

BIC and CAIC are minimized at K = 2; AIC and sample-size-adjusted BIC
(aBIC) are minimized at K = 5. K = 5 was selected as the primary model on
a priori direction for this exploratory poster (a choice that also happens
to align with aBIC); K = 3 and K = 4 are reported as disclosed sensitivity
solutions.

### Bootstrap likelihood-ratio test (BLRT)

Run in `glca`, since `poLCA` provides neither BLRT nor LMR. The nested
comparison (below) is the test that answers "does adding a class improve
fit"; it is distinct from each model's own absolute-fit p-value against
the saturated model.

**Nested comparison (k classes vs. k−1 classes):**

| Comparison | df | Deviance | Boot p | Sig |
|---|---|---|---|---|
| K=3 vs K=2 | 9 | 51.03 | <.001 | *** |
| K=4 vs K=3 | 9 | 36.62 | <.001 | *** |
| K=5 vs K=4 | 9 | 32.57 | <.001 | *** |
| K=6 vs K=5 | 9 | 10.38 | .36 | ns |

The nested test is significant through the 5-vs-4 comparison and stops
being significant at 6-vs-5, consistent with support for K = 5 (and no
further improvement at K = 6).

**Each model's own absolute fit (Gsq vs. the saturated model):**

| K | Absolute-fit boot p |
|---|---|
| 2 | <.001 |
| 3 | <.001 |
| 4 | .20 |
| 5 | .58 |
| 6 | .59 |

K = 4 is the first model that fits adequately in an absolute sense (p =
.20); K = 5 fits comfortably (p = .58).

---

## 2. K = 5 — Primary model

### 2.1 Item-endorsement profile — P(endorse | class)

| Item | Class 1 | Class 2 | Class 3 | Class 4 | Class 5 |
|------|---------|---------|---------|---------|---------|
| sc01 | 0.032 | 0.050 | 0.519 | 0.623 | 0.606 |
| sc02 | 0.067 | 0.052 | 0.807 | 0.776 | 0.568 |
| sc03 | 0.360 | 0.015 | 0.158 | 0.892 | 0.219 |
| sc04 | 0.219 | 0.000 | 0.028 | 0.526 | 0.050 |
| sc05 | 0.000 | 0.057 | 0.116 | 0.697 | 0.498 |
| sc06 | 0.787 | 0.041 | 0.227 | 0.870 | 0.000 |
| sc07 | 0.203 | 0.019 | 0.034 | 0.747 | 0.532 |
| sc08 | 0.249 | 0.036 | 0.000 | 0.841 | 0.721 |

### 2.2 Class sizes (modal assignment, N = 435)

| Class | n | % |
|-------|---|---|
| Class 1 | 20 | 4.6% |
| Class 2 | 239 | 54.9% |
| Class 3 | 67 | 15.4% |
| Class 4 | 64 | 14.7% |
| Class 5 | 45 | 10.3% |

### 2.3 Validator comparisons — omnibus (Wald) tests

BCH-weighted, FDR-corrected (Benjamini-Hochberg) within this panel.

| Validator | BCH Wald χ² | df | Omnibus p | ω² | FDR p | Sig |
|---|---|---|---|---|---|---|
| Aggression (CASI Category C) | 16.00 | 4 | 3.02e-3 | 0.029 | 5.03e-3 | ** |
| Impulsivity (CASI Category A) | 18.88 | 4 | 8.30e-4 | 0.035 | 2.16e-3 | ** |
| Irritability (IDA) | 35.53 | 4 | 3.62e-7 | 0.062 | 3.62e-6 | *** |
| State mania (YMRS) | 7.95 | 4 | 0.093 | 0.011 | 0.117 | ns |
| State depression (CDRS-R) | 18.04 | 4 | 1.21e-3 | 0.034 | 2.42e-3 | ** |
| A-LIFE interpersonal (aps205) | 19.90 | 4 | 5.24e-4 | 0.044 | 2.16e-3 | ** |
| A-LIFE global (apr209) | 18.79 | 4 | 8.64e-4 | 0.037 | 2.16e-3 | ** |

`min_bch_weight = -0.72`; no NA-omnibus or out-of-range outcomes.

### 2.4 Full pairwise contrasts

Compact letter displays: classes sharing a letter do not differ after FDR
correction. `est` = mean(a) − mean(b); a negative value means class b
scored higher.

**Aggression (CASI Category C)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -0.072 | 0.185 | -0.39 | .773 | ns |
| Class1 vs Class3 | -0.602 | 0.225 | -2.68 | .037 | * |
| Class1 vs Class4 | -0.344 | 0.202 | -1.70 | .223 | ns |
| Class1 vs Class5 | -0.316 | 0.228 | -1.39 | .236 | ns |
| Class2 vs Class3 | -0.530 | 0.164 | -3.22 | .013 | * |
| Class2 vs Class4 | -0.271 | 0.118 | -2.31 | .070 | ns (trend) |
| Class2 vs Class5 | -0.244 | 0.165 | -1.48 | .236 | ns |
| Class3 vs Class4 | 0.258 | 0.180 | 1.44 | .236 | ns |
| Class3 vs Class5 | 0.286 | 0.222 | 1.28 | .249 | ns |
| Class4 vs Class5 | 0.028 | 0.193 | 0.14 | .886 | ns |

**Impulsivity (CASI Category A)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.031 | 0.234 | 0.13 | .893 | ns |
| Class1 vs Class3 | -0.584 | 0.265 | -2.21 | .091 | ns (trend) |
| Class1 vs Class4 | -0.301 | 0.244 | -1.23 | .312 | ns |
| Class1 vs Class5 | -0.171 | 0.264 | -0.65 | .575 | ns |
| Class2 vs Class3 | -0.615 | 0.167 | -3.68 | .0023 | ** |
| Class2 vs Class4 | -0.332 | 0.117 | -2.84 | .022 | * |
| Class2 vs Class5 | -0.203 | 0.164 | -1.23 | .312 | ns |
| Class3 vs Class4 | 0.283 | 0.180 | 1.57 | .232 | ns |
| Class3 vs Class5 | 0.412 | 0.223 | 1.85 | .161 | ns |
| Class4 vs Class5 | 0.129 | 0.191 | 0.68 | .575 | ns |

**Irritability (IDA)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.272 | 0.777 | 0.35 | .727 | ns |
| Class1 vs Class3 | -2.364 | 0.847 | -2.79 | .017 | * |
| Class1 vs Class4 | -1.524 | 0.820 | -1.86 | .126 | ns |
| Class1 vs Class5 | -0.658 | 0.877 | -0.75 | .503 | ns |
| Class2 vs Class3 | -2.636 | 0.524 | -5.03 | 4.9e-6 | *** |
| Class2 vs Class4 | -1.796 | 0.428 | -4.19 | 1.4e-4 | *** |
| Class2 vs Class5 | -0.930 | 0.562 | -1.66 | .163 | ns |
| Class3 vs Class4 | 0.840 | 0.579 | 1.45 | .210 | ns |
| Class3 vs Class5 | 1.706 | 0.708 | 2.41 | .040 | * |
| Class4 vs Class5 | 0.866 | 0.657 | 1.32 | .234 | ns |

**State mania (YMRS)** — omnibus ns; no pairwise contrasts reach FDR
significance.

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -1.022 | 2.172 | -0.47 | .911 | ns |
| Class1 vs Class3 | -4.195 | 2.527 | -1.66 | .219 | ns |
| Class1 vs Class4 | -4.216 | 2.449 | -1.72 | .219 | ns |
| Class1 vs Class5 | -0.739 | 2.556 | -0.29 | .966 | ns |
| Class2 vs Class3 | -3.173 | 1.725 | -1.84 | .219 | ns |
| Class2 vs Class4 | -3.194 | 1.455 | -2.20 | .219 | ns |
| Class2 vs Class5 | 0.283 | 1.731 | 0.16 | .967 | ns |
| Class3 vs Class4 | -0.020 | 2.018 | -0.01 | .992 | ns |
| Class3 vs Class5 | 3.456 | 2.315 | 1.49 | .226 | ns |
| Class4 vs Class5 | 3.477 | 2.172 | 1.60 | .219 | ns |

**State depression (CDRS-R)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 2.663 | 2.283 | 1.17 | .487 | ns |
| Class1 vs Class3 | -2.514 | 2.917 | -0.86 | .555 | ns |
| Class1 vs Class4 | -3.069 | 2.615 | -1.17 | .487 | ns |
| Class1 vs Class5 | -0.553 | 2.978 | -0.19 | .853 | ns |
| Class2 vs Class3 | -5.177 | 2.177 | -2.38 | .087 | ns (trend) |
| Class2 vs Class4 | -5.732 | 1.579 | -3.63 | .0028 | ** |
| Class2 vs Class5 | -3.216 | 2.222 | -1.45 | .487 | ns |
| Class3 vs Class4 | -0.556 | 2.462 | -0.23 | .853 | ns |
| Class3 vs Class5 | 1.960 | 3.048 | 0.64 | .650 | ns |
| Class4 vs Class5 | 2.516 | 2.673 | 0.94 | .555 | ns |

**A-LIFE interpersonal (aps205)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.028 | 0.180 | 0.16 | .877 | ns |
| Class1 vs Class3 | -0.437 | 0.267 | -1.64 | .204 | ns |
| Class1 vs Class4 | -0.570 | 0.211 | -2.69 | .035 | * |
| Class1 vs Class5 | -0.361 | 0.234 | -1.54 | .204 | ns |
| Class2 vs Class3 | -0.465 | 0.238 | -1.95 | .127 | ns |
| Class2 vs Class4 | -0.597 | 0.154 | -3.88 | 1.0e-3 | ** |
| Class2 vs Class5 | -0.389 | 0.192 | -2.03 | .127 | ns |
| Class3 vs Class4 | -0.133 | 0.254 | -0.52 | .751 | ns |
| Class3 vs Class5 | 0.076 | 0.290 | 0.26 | .877 | ns |
| Class4 vs Class5 | 0.209 | 0.231 | 0.91 | .522 | ns |

**A-LIFE global (apr209)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.044 | 0.180 | 0.25 | .884 | ns |
| Class1 vs Class3 | -0.361 | 0.280 | -1.29 | .329 | ns |
| Class1 vs Class4 | -0.497 | 0.217 | -2.29 | .072 | ns (trend) |
| Class1 vs Class5 | -0.402 | 0.206 | -1.95 | .127 | ns |
| Class2 vs Class3 | -0.405 | 0.253 | -1.60 | .219 | ns |
| Class2 vs Class4 | -0.541 | 0.160 | -3.38 | .0074 | ** |
| Class2 vs Class5 | -0.446 | 0.156 | -2.86 | .021 | * |
| Class3 vs Class4 | -0.136 | 0.271 | -0.50 | .804 | ns |
| Class3 vs Class5 | -0.041 | 0.280 | -0.15 | .884 | ns |
| Class4 vs Class5 | 0.095 | 0.206 | 0.46 | .804 | ns |

### 2.5 Sex (descriptive)

| Class | % male | % female |
|---|---|---|
| Class 1 | 65.0% | 35.0% |
| Class 2 | 79.5% | 20.5% |
| Class 3 | 55.2% | 44.8% |
| Class 4 | 50.0% | 50.0% |
| Class 5 | 48.9% | 51.1% |

χ²(4) = 36.43, p = 2.36e-7.

### 2.6 NSSI (self-harm)

Concurrent self-harm analysis, N = 310 (39.7% any-endorsed). Winsorized sum
capped at the 95th percentile (= 8 in this sample).

**Omnibus:**

| Outcome | BCH Wald χ² | df | p | Effect size | Sig |
|---|---|---|---|---|---|
| `nssi_sum_wins` (continuous) | 47.84 | 4 | 1.02e-9 | ω² = 0.168 | *** |

`in_range = TRUE`, `min_bch_weight = -0.72`. No FDR correction: `nssi_sum_wins`
runs alone in this panel (`nssi_any` was dropped as a poster validator,
2026-07-21) and on its own sample (N=310, distinct from Plan 1's N=435), so
there's no sibling test in scope to correct against — BH with a single test
is a no-op, and showing it as "FDR p" would misleadingly imply a correction
was applied. (An earlier version of this table showed FDR p = 2.04e-9, double
the raw p, from when `nssi_any` still shared this panel.)

**Pairwise, `nssi_sum_wins`:**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 1.750 | 0.750 | 2.33 | .049 | * |
| Class1 vs Class3 | 0.272 | 0.850 | 0.32 | .749 | ns |
| Class1 vs Class4 | -1.282 | 0.920 | -1.39 | .273 | ns |
| Class1 vs Class5 | -0.947 | 1.074 | -0.88 | .472 | ns |
| Class2 vs Class3 | -1.478 | 0.506 | -2.92 | .012 | * |
| Class2 vs Class4 | -3.031 | 0.578 | -5.25 | 1.6e-6 | *** |
| Class2 vs Class5 | -2.697 | 0.832 | -3.24 | .0059 | ** |
| Class3 vs Class4 | -1.554 | 0.731 | -2.13 | .067 | ns (trend) |
| Class3 vs Class5 | -1.220 | 0.987 | -1.24 | .310 | ns |
| Class4 vs Class5 | 0.334 | 1.031 | 0.32 | .749 | ns |

**Reading:** Class 2 (Minimal) is consistently lowest on NSSI; Class 3 and
Class 4 are both significantly elevated relative to Class 2 on both
outcomes. N = 191 respondents were excluded from this analysis (no
Plan-1 class match / no valid last-completed-SCID wave).

---

## 3. K = 3 — Sensitivity solution

### 3.1 Item-endorsement profile

| Item | Class 1 | Class 2 | Class 3 |
|------|---------|---------|---------|
| sc01 | 0.671 | 0.557 | 0.060 |
| sc02 | 0.687 | 0.705 | 0.112 |
| sc03 | 0.188 | 0.862 | 0.044 |
| sc04 | 0.014 | 0.504 | 0.021 |
| sc05 | 0.323 | 0.625 | 0.052 |
| sc06 | 0.131 | 0.820 | 0.120 |
| sc07 | 0.292 | 0.692 | 0.036 |
| sc08 | 0.384 | 0.806 | 0.044 |

### 3.2 Class sizes (modal assignment, N = 435)

| Class | n | % |
|---|---|---|
| Class 1 | 73 | 16.8% |
| Class 2 | 76 | 17.5% |
| Class 3 | 286 | 65.7% |

### 3.3 Validator comparisons — omnibus (Wald) tests

| Validator | BCH Wald χ² | df | Omnibus p | ω² | FDR p | Sig |
|---|---|---|---|---|---|---|
| Aggression | 14.73 | 2 | 6.33e-4 | 0.032 | 1.58e-3 | ** |
| Impulsivity | 9.82 | 2 | 7.38e-3 | 0.019 | .0148 | * |
| Irritability | 21.06 | 2 | 2.67e-5 | 0.039 | 1.97e-4 | *** |
| State mania (YMRS) | 2.87 | 2 | 0.238 | 0.003 | 0.265 | ns |
| State depression (CDRS-R) | 8.96 | 2 | 0.0113 | 0.019 | 0.0189 | * |
| A-LIFE interpersonal (aps205) | 20.29 | 2 | 3.94e-5 | 0.053 | 1.97e-4 | *** |
| A-LIFE global (apr209) | 16.31 | 2 | 2.87e-4 | 0.041 | 9.56e-4 | *** |

`min_bch_weight = -0.258`.

### 3.4 Full pairwise contrasts

**Aggression (CASI Category C)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.366 | 0.168 | 2.18 | .044 | * |
| Class1 vs Class3 | 0.522 | 0.141 | 3.70 | 6.4e-4 | *** |
| Class2 vs Class3 | 0.155 | 0.109 | 1.43 | .153 | ns |

**Impulsivity (CASI Category A)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.129 | 0.172 | 0.75 | .452 | ns |
| Class1 vs Class3 | 0.367 | 0.145 | 2.53 | .034 | * |
| Class2 vs Class3 | 0.238 | 0.111 | 2.14 | .048 | * |

**Irritability (IDA)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.175 | 0.561 | 0.31 | .755 | ns |
| Class1 vs Class3 | 1.586 | 0.466 | 3.40 | 9.9e-4 | *** |
| Class2 vs Class3 | 1.411 | 0.395 | 3.57 | 9.9e-4 | *** |

**State mania (YMRS)** — omnibus ns; no pairwise contrasts reach FDR
significance.

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -1.665 | 1.942 | -0.86 | .587 | ns |
| Class1 vs Class3 | 0.606 | 1.504 | 0.40 | .687 | ns |
| Class2 vs Class3 | 2.271 | 1.357 | 1.67 | .283 | ns |

**State depression (CDRS-R)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -3.146 | 2.203 | -1.43 | .230 | ns |
| Class1 vs Class3 | 1.228 | 1.769 | 0.69 | .488 | ns |
| Class2 vs Class3 | 4.373 | 1.477 | 2.96 | .0092 | ** |

**A-LIFE interpersonal (aps205)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.047 | 0.215 | 0.22 | .828 | ns |
| Class1 vs Class3 | 0.551 | 0.183 | 3.02 | .0038 | ** |
| Class2 vs Class3 | 0.505 | 0.137 | 3.68 | 6.9e-4 | *** |

**A-LIFE global (apr209)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -0.061 | 0.207 | -0.29 | .770 | ns |
| Class1 vs Class3 | 0.433 | 0.171 | 2.53 | .017 | * |
| Class2 vs Class3 | 0.494 | 0.143 | 3.46 | .0016 | ** |

### 3.5 Sex (descriptive)

| Class | % male | % female |
|---|---|---|
| Class 1 | 54.8% | 45.2% |
| Class 2 | 51.3% | 48.7% |
| Class 3 | 75.2% | 24.8% |

χ²(2) = 22.15, p = 1.55e-5.

### 3.6 NSSI (self-harm)

**Omnibus:**

| Outcome | BCH Wald χ² | df | Omnibus p | Effect size | FDR p | Sig |
|---|---|---|---|---|---|---|
| `nssi_sum_wins` | 49.28 | 2 | 1.99e-11 | ω² = 0.190 | 1.99e-11 | *** |

`in_range = TRUE`, `min_bch_weight = -0.258`.

**Full pairwise:**

| Contrast | est (`nssi_sum_wins`) | p_fdr |
|---|---|---|---|---|
| Class1 vs Class2 | -1.057 | .175 (ns) |
| Class1 vs Class3 | 2.050 | 4.0e-4 (***) |
| Class2 vs Class3 | 3.107 | 1.0e-8 (***) |

---

## 4. K = 4 — Sensitivity solution

### 4.1 Item-endorsement profile

| Item | Class 1 | Class 2 | Class 3 | Class 4 |
|------|---------|---------|---------|---------|
| sc01 | 0.641 | 0.056 | 0.050 | 0.630 |
| sc02 | 0.658 | 0.187 | 0.096 | 0.771 |
| sc03 | 0.180 | 0.385 | 0.014 | 0.886 |
| sc04 | 0.033 | 0.224 | 0.000 | 0.512 |
| sc05 | 0.310 | 0.000 | 0.055 | 0.720 |
| sc06 | 0.115 | 0.748 | 0.052 | 0.821 |
| sc07 | 0.280 | 0.183 | 0.016 | 0.763 |
| sc08 | 0.354 | 0.240 | 0.032 | 0.845 |

### 4.2 Class sizes (modal assignment, N = 435)

| Class | n | % |
|---|---|---|
| Class 1 | 82 | 18.9% |
| Class 2 | 28 | 6.4% |
| Class 3 | 262 | 60.2% |
| Class 4 | 63 | 14.5% |

### 4.3 Validator comparisons — omnibus (Wald) tests

| Validator | BCH Wald χ² | df | Omnibus p | ω² | FDR p | Sig |
|---|---|---|---|---|---|---|
| Aggression | 21.01 | 3 | 1.05e-4 | 0.040 | 3.49e-4 | *** |
| Impulsivity | 16.22 | 3 | 1.02e-3 | 0.032 | 2.04e-3 | ** |
| Irritability | 26.22 | 3 | 8.59e-6 | 0.045 | 8.59e-5 | *** |
| State mania (YMRS) | 4.50 | 3 | 0.212 | 0.006 | 0.212 | ns |
| State depression (CDRS-R) | 12.95 | 3 | 4.75e-3 | 0.026 | 7.92e-3 | ** |
| A-LIFE interpersonal (aps205) | 24.10 | 3 | 2.38e-5 | 0.062 | 1.19e-4 | *** |
| A-LIFE global (apr209) | 19.15 | 3 | 2.54e-4 | 0.048 | 6.35e-4 | *** |

`min_bch_weight = -0.553`.

### 4.4 Full pairwise contrasts

**Aggression (CASI Category B)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.750 | 0.204 | 3.67 | 1.1e-3 | *** |
| Class1 vs Class3 | 0.472 | 0.133 | 3.56 | 1.1e-3 | *** |
| Class1 vs Class4 | 0.212 | 0.161 | 1.32 | .186 | ns |
| Class2 vs Class3 | -0.277 | 0.176 | -1.57 | .139 | ns |
| Class2 vs Class4 | -0.537 | 0.196 | -2.75 | .012 | * |
| Class3 vs Class4 | -0.260 | 0.116 | -2.24 | .038 | * |

**Impulsivity (CASI Category A)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.553 | 0.244 | 2.27 | .047 | * |
| Class1 vs Class3 | 0.436 | 0.137 | 3.17 | .0091 | ** |
| Class1 vs Class4 | 0.126 | 0.162 | 0.78 | .525 | ns |
| Class2 vs Class3 | -0.118 | 0.220 | -0.54 | .593 | ns |
| Class2 vs Class4 | -0.427 | 0.232 | -1.84 | .098 | ns (trend) |
| Class3 vs Class4 | -0.310 | 0.115 | -2.70 | .021 | * |

**Irritability (IDA)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 1.750 | 0.795 | 2.20 | .042 | * |
| Class1 vs Class3 | 1.564 | 0.435 | 3.60 | 9.7e-4 | *** |
| Class1 vs Class4 | -0.138 | 0.523 | -0.26 | .802 | ns |
| Class2 vs Class3 | -0.186 | 0.744 | -0.25 | .802 | ns |
| Class2 vs Class4 | -1.888 | 0.784 | -2.41 | .032 | * |
| Class3 vs Class4 | -1.702 | 0.412 | -4.13 | 2.1e-4 | *** |

**State mania (YMRS)** — omnibus ns; no pairwise contrasts reach FDR
significance.

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.853 | 2.537 | 0.34 | .884 | ns |
| Class1 vs Class3 | 0.562 | 1.397 | 0.40 | .884 | ns |
| Class1 vs Class4 | -2.451 | 1.867 | -1.31 | .399 | ns |
| Class2 vs Class3 | -0.291 | 2.304 | -0.13 | .900 | ns |
| Class2 vs Class4 | -3.305 | 2.577 | -1.28 | .399 | ns |
| Class3 vs Class4 | -3.014 | 1.446 | -2.08 | .223 | ns |

**State depression (CDRS-R)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -0.437 | 2.946 | -0.15 | .882 | ns |
| Class1 vs Class3 | 2.214 | 1.732 | 1.28 | .401 | ns |
| Class1 vs Class4 | -3.198 | 2.184 | -1.46 | .401 | ns |
| Class2 vs Class3 | 2.651 | 2.573 | 1.03 | .401 | ns |
| Class2 vs Class4 | -2.761 | 2.859 | -0.97 | .401 | ns |
| Class3 vs Class4 | -5.412 | 1.569 | -3.45 | .0034 | ** |

**A-LIFE interpersonal (aps205)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.658 | 0.240 | 2.74 | .0093 | ** |
| Class1 vs Class3 | 0.556 | 0.181 | 3.08 | .0042 | ** |
| Class1 vs Class4 | -0.038 | 0.215 | -0.18 | .860 | ns |
| Class2 vs Class3 | -0.102 | 0.192 | -0.53 | .714 | ns |
| Class2 vs Class4 | -0.696 | 0.222 | -3.13 | .0042 | ** |
| Class3 vs Class4 | -0.594 | 0.151 | -3.93 | 5.1e-4 | *** |

**A-LIFE global (apr209)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.568 | 0.254 | 2.24 | .038 | * |
| Class1 vs Class3 | 0.473 | 0.170 | 2.78 | .016 | * |
| Class1 vs Class4 | -0.083 | 0.210 | -0.39 | .694 | ns |
| Class2 vs Class3 | -0.095 | 0.219 | -0.43 | .694 | ns |
| Class2 vs Class4 | -0.651 | 0.248 | -2.63 | .017 | * |
| Class3 vs Class4 | -0.555 | 0.157 | -3.53 | .0025 | ** |

### 4.5 Sex (descriptive)

| Class | % male | % female |
|---|---|---|
| Class 1 | 54.9% | 45.1% |
| Class 2 | 64.3% | 35.7% |
| Class 3 | 76.3% | 23.7% |
| Class 4 | 49.2% | 50.8% |

χ²(3) = 25.06, p = 1.50e-5.

### 4.6 NSSI (self-harm)

**Omnibus:**

| Outcome | BCH Wald χ² | df | Omnibus p | Effect size | FDR p | Sig |
|---|---|---|---|---|---|---|
| `nssi_sum_wins` | 48.22 | 3 | 1.91e-10 | ω² = 0.169 | 1.91e-10 | *** |

`in_range = TRUE`, `min_bch_weight = -0.553`.

**Full pairwise:**

| Contrast | est (`nssi_sum_wins`) | p_fdr |
|---|---|---|---|---|
| Class1 vs Class2 | 0.542 | .524 (ns) |
| Class1 vs Class3 | 2.206 | 1.1e-4 (***) |
| Class1 vs Class4 | -0.851 | .327 (ns) |
| Class2 vs Class3 | 1.664 | .034 (*) |
| Class2 vs Class4 | -1.393 | .171 (ns) |
| Class3 vs Class4 | -3.057 | 5.7e-7 (***) |

---

## 5. Cross-model summary

| | K=3 | K=4 | **K=5 (primary)** |
|---|---|---|---|
| Smallest modal class | 16.8% | 6.4% | **4.6%** |
| Concurrent validators significant (of 7) | 6 | 5 | 5 |
| NSSI omnibus | significant, clean | significant, clean | significant, clean |
| NSSI direction | Minimal lowest | Minimal lowest | Minimal lowest |

The validator story (irritability, aggression, impulsivity, mood,
functioning differentiate classes) and the NSSI differentiation both
replicate across all three K.