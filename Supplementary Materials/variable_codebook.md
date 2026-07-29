# Variable Codebook

A lookup table for the short variable names used throughout
`complete_results.md` and `closed_form_bch.R`, so a table row can be
decoded without cross-referencing `detailed_methods.md`. See that
document for the full scoring/proration rules behind each measure.

## LCA indicators (SCID-II identity-disturbance items)

The 8 items that define the latent classes themselves — never treated as
an outcome.

| Variable | Construct |
|---|---|
| `sc01` | Abandonment fears |
| `sc02` | Unstable relationships |
| `sc03` | Sudden identity shifts |
| `sc04` | Identity instability |
| `sc05` | Unstable self-image |
| `sc06` | Goal instability |
| `sc07` | Chronic emptiness |
| `sc08` | Stress-related dissociation / paranoia |

## Concurrent validators

| Variable | Construct | Range | Direction |
|---|---|---|---|
| `capb_agg` | Aggression (CASI Category C) | 0–3 | Higher = more aggression |
| `capa_imp` | Impulsivity (CASI Category A) | 0–3 | Higher = more impulsivity |
| `ida_irr` | Irritability (IDA) | 0–12 | Higher = more irritability |
| `ymrs` | State mania (YMRS) | 0–60 | Higher = more manic |
| `cdrs` | State depression (CDRS-R) | 17–113 | Higher = more depressed |
| `aps205` | A-LIFE: interpersonal functioning | 1–5 | Higher = poorer functioning |
| `apr209` | A-LIFE: global social adjustment | 1–5 | Higher = poorer functioning |
| `sex` | Sex | 1 / 2 | 1 = male, 2 = female |

## Self-harm outcomes (NSSI)

| Variable | Construct | Notes |
|---|---|---|
| `nssi_sum_wins` | Count of NSSI methods endorsed, winsorized | Capped at the 95th percentile (= 8); 11 YRBS-HS method items |

## Class labels

`Class 1`–`Class 5` (K=5 primary model), `Class 1`–`Class 4` (K=4
sensitivity), `Class 1`–`Class 3` (K=3 sensitivity). Numbering is
arbitrary (an artifact of model-fitting order), **not** an ordered
severity ranking — see `detailed_methods.md`'s typology-vs-continuum
discussion for why classes shouldn't be read as low-to-high.

## Statistical columns

| Term | Meaning |
|---|---|
| `K` | Number of latent classes in a given model |
| `logLik` | Log-likelihood of the fitted model |
| `AIC` / `BIC` / `aBIC` / `CAIC` | Model fit indices used to compare different K (lower = better fit, with tradeoffs — see `detailed_methods.md`) |
| Entropy | How cleanly the model separates people into classes (0–1, higher = better separated) |
| Boot p | Bootstrap likelihood-ratio test p-value (is adding a class an improvement?) |
| BCH Wald χ² / df | The omnibus test statistic and its degrees of freedom (K − 1 classes); `pchisq()` on these two converts to the omnibus p-value |
| Omnibus p / `omnibus_p` | Raw p-value testing whether an outcome differs across all classes at once |
| FDR p / `p_fdr` | The omnibus or pairwise p-value after Benjamini-Hochberg correction for multiple comparisons |
| ω² (omega squared) | Effect size for a continuous outcome (how much of its variance the classes account for) |
| `est` | BCH-corrected difference between two classes' means (a pairwise contrast) |
| SE | Standard error |
| `z` | Test statistic for a pairwise contrast |
| Sig | Significance stars: `***` p<.001, `**` p<.01, `*` p<.05, `ns` not significant, `ns (trend)` p<.10 |
| `min_bch_weight` | Diagnostic: the most negative BCH weight in the sample |
| `in_range` | Diagnostic: whether every class's BCH-corrected value fell within the outcome's actually-observed range |
