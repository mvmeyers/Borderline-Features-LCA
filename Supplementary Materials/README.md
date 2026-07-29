# OSF Supplement

Supplementary materials for the poster on personality-functioning classes
(latent class analysis of 8 BPD identity-disturbance items) in a
mania-risk youth sample, and their relationship to irritability,
aggression, impulsivity, psychosocial functioning, state mood, and
non-suicidal self-injury (NSSI).

## Files

- **`detailed_methods.md`** — This is an expanded, plain-language
  write-up of the methods: sample, measures (noting the actual instruments
  and scoring rules), class enumeration, the BCH statistical approach,
  missing-data handling, and inference conventions.

- **`complete_results.md`** — The full statistical results: model fit
  indices and the bootstrap likelihood-ratio test across K = 1–6, then for
  each of the three class solutions (K=5 primary, K=3 and K=4 disclosed
  sensitivity checks) — item-endorsement profiles, class sizes, omnibus
  validator tests, every pairwise class contrast, the sex breakdown, and
  the NSSI self-harm results.

- **`closed_form_bch.R`** — The actual R code for the statistical method
  used throughout (a manual, bias-adjusted three-step / BCH approach,
  computed in closed form rather than through a packaged routine, because
  the method requires negative weights that base R's standard model-fitting
  functions can't handle). Includes a self-contained, runnable
  demonstration that the estimator recovers known-true values on simulated
  data, and was independently cross-checked against Mplus's own
  implementation of the same method.

- **`variable_codebook.md`** — Lookup table for the short variable names
  used in `complete_results.md` and `closed_form_bch.R` (e.g. `sc01`,
  `capb_agg`, `ida_irr`, `aps205`, `nssi_sum_wins`), plus a glossary of the
  statistical column headers (`omnibus_p`, `p_fdr`, ω², BCH Wald χ²,
  `min_bch_weight`, etc.).

- **`omnibus_figures.md`** — Visual companion to `complete_results.md`'s
  omnibus/pairwise tables: item-endorsement profile plots and bar +
  compact-letter-display validator-comparison figures for K=5, K=3, and
  K=4. Images live in `figures/`.

- **`session_info.md`** — R and package versions used to produce these
  results, for reproducibility.

## Scope note

All documents describe the same, consistent scope: the K=5 primary
model with K=3/K=4 as disclosed sensitivity checks, concurrent validators
(irritability, aggression, impulsivity, two A-LIFE psychosocial-functioning
items, state mood), and NSSI as the self-harm outcome.

## Suggested reading order

1. `detailed_methods.md` for the methods.
2. `complete_results.md` for the numbers behind every result described in
   (1).
3. `omnibus_figures.md` for the same results as figures.
4. `closed_form_bch.R` if you want to see or run the actual statistical
   code, not just read about it.
5. `variable_codebook.md` as a reference, if needed, especially to look
    scoring guidelines.
6. `session_info.md` for exact package versions.
