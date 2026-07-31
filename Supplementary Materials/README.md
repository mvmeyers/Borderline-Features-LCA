# OSF Supplement

## Latent Classes of Borderline Personality Features Differentiate Self-Harm in Youth with Elevated Symptoms of Mania

Supplementary materials for AWRI Summer Student Poster Day 2026

Poster presented by Margaret Meyers

Contact at veselin@unc.edu or mmeyers8549@gmail.com


## Files

- **`Latent Classes of Borderline Personality Features Differentiate
  Self-Harm in Youth with Elevated Symptoms of Mania.pptx`** — The poster
  itself, presented at AWRI Summer Student Poster Day 2026. Everything
  below is supplementary material supporting it.

- **`detailed_methods.md`** — This is an expanded, plain-language
  write-up of the methods: sample, measures (noting the actual instruments
  and scoring rules), class enumeration, the BCH statistical approach,
  missing-data handling, and inference conventions.

- **`complete_results.md`** — The full statistical results: model fit
  indices and the bootstrap likelihood-ratio test across *K* = 1–6, then for
  each of the three class solutions (*K*=5 primary, *K*=3 and *K*=4 disclosed
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
  compact-letter-display validator-comparison figures for *K*=5, *K*=3, and
  *K*=4. Images live in `figures/`.

- **`session_info.md`** — R and package versions used to produce these
  results, for reproducibility.

- **`references.txt`** — Numbered bibliography for the citations used on
  the poster and in `detailed_methods.md`.

## Suggested reading order

1. `Latent Classes of Borderline Personality Features Differentiate
   Self-Harm in Youth with Elevated Symptoms of Mania.pptx` for the poster
   itself.
2. `detailed_methods.md` for the detailed methods summary.
3. `complete_results.md` for the numbers behind every result described in
   (2).
4. `omnibus_figures.md` for the same results as figures.
5. `variable_codebook.md` as a reference for measurements and variables.
6. `closed_form_bch.R` for the code used to run BCH weighting in R.
7. `session_info.md` for exact package versions.
8. `references.txt` for the full citations.
