`Complete Results`

This document contains the full statistical results supporting the poster,
matching the scope of `detailed_methods.md`: the K=5 primary model and the
K=3/K=4 sensitivity solutions, each with concurrent validator (irritability,
aggression, impulsivity, functioning, state mood) and NSSI results.
Binary outcomes (sex) are reported with test statistics and p-values only.

**Sample:** N = 439 in the P-GBI-elevated subsample; N = 435 complete-case
on 8 SCID-II identity/interpersonal items (the analytic sample for every
class model below). The NSSI self-harm analysis uses a smaller,
concurrently-matched subsample (N = 310) that corresponded to availability of
responses to the Youth Risk Behavior Survey (High School form).

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
| sc01 | 0.050 | 0.519 | 0.032 | 0.606 | 0.623 |
| sc02 | 0.052 | 0.807 | 0.067 | 0.568 | 0.776 |
| sc03 | 0.015 | 0.158 | 0.360 | 0.219 | 0.892 |
| sc04 | 0.000 | 0.028 | 0.219 | 0.050 | 0.526 |
| sc05 | 0.057 | 0.116 | 0.000 | 0.498 | 0.697 |
| sc06 | 0.041 | 0.227 | 0.787 | 0.000 | 0.870 |
| sc07 | 0.019 | 0.034 | 0.203 | 0.532 | 0.747 |
| sc08 | 0.036 | 0.000 | 0.249 | 0.721 | 0.841 |

Class 1 = Minimal Features, Class 2 = Interpersonal Reactivity, Class 3 =
Identity-Goal Instability, Class 4 = Relational Stress-Reactivity, Class 5
= Pervasive Identity-Interpersonal Disturbance.

### 2.2 Class sizes (modal assignment, N = 435)

| Class | n | % |
|-------|---|---|
| Class 1 | 239 | 54.9% |
| Class 2 | 67 | 15.4% |
| Class 3 | 20 | 4.6% |
| Class 4 | 45 | 10.3% |
| Class 5 | 64 | 14.7% |

Class 3 (n = 20, 4.6%) falls below the project's own <5%-class exclusion
convention; retained because of a clinically notable self-harm signal
(§2.6).

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
| Class1 vs Class2 | -0.530 | 0.164 | -3.22 | .013 | * |
| Class1 vs Class3 | 0.072 | 0.185 | 0.39 | .773 | ns |
| Class1 vs Class4 | -0.244 | 0.165 | -1.48 | .236 | ns |
| Class1 vs Class5 | -0.271 | 0.118 | -2.31 | .070 | ns (trend) |
| Class2 vs Class3 | 0.602 | 0.225 | 2.68 | .037 | * |
| Class2 vs Class4 | 0.286 | 0.222 | 1.28 | .249 | ns |
| Class2 vs Class5 | 0.258 | 0.180 | 1.44 | .236 | ns |
| Class3 vs Class4 | -0.316 | 0.228 | -1.39 | .236 | ns |
| Class3 vs Class5 | -0.344 | 0.202 | -1.70 | .223 | ns |
| Class4 vs Class5 | -0.028 | 0.193 | -0.14 | .886 | ns |

**Impulsivity (CASI Category A)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -0.615 | 0.167 | -3.68 | .0023 | ** |
| Class1 vs Class3 | -0.031 | 0.234 | -0.13 | .893 | ns |
| Class1 vs Class4 | -0.203 | 0.164 | -1.23 | .312 | ns |
| Class1 vs Class5 | -0.332 | 0.117 | -2.84 | .022 | * |
| Class2 vs Class3 | 0.584 | 0.265 | 2.21 | .091 | ns (trend) |
| Class2 vs Class4 | 0.412 | 0.223 | 1.85 | .161 | ns |
| Class2 vs Class5 | 0.283 | 0.180 | 1.57 | .232 | ns |
| Class3 vs Class4 | -0.171 | 0.264 | -0.65 | .575 | ns |
| Class3 vs Class5 | -0.301 | 0.244 | -1.23 | .312 | ns |
| Class4 vs Class5 | -0.129 | 0.191 | -0.68 | .575 | ns |

**Irritability (IDA)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -2.636 | 0.524 | -5.03 | 4.9e-6 | *** |
| Class1 vs Class3 | -0.272 | 0.777 | -0.35 | .727 | ns |
| Class1 vs Class4 | -0.930 | 0.562 | -1.66 | .163 | ns |
| Class1 vs Class5 | -1.796 | 0.428 | -4.19 | 1.4e-4 | *** |
| Class2 vs Class3 | 2.364 | 0.847 | 2.79 | .017 | * |
| Class2 vs Class4 | 1.706 | 0.708 | 2.41 | .040 | * |
| Class2 vs Class5 | 0.840 | 0.579 | 1.45 | .210 | ns |
| Class3 vs Class4 | -0.658 | 0.877 | -0.75 | .503 | ns |
| Class3 vs Class5 | -1.524 | 0.820 | -1.86 | .126 | ns |
| Class4 vs Class5 | -0.866 | 0.657 | -1.32 | .234 | ns |

**State mania (YMRS)** — omnibus ns; no pairwise contrasts reach FDR
significance.

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -3.173 | 1.725 | -1.84 | .219 | ns |
| Class1 vs Class3 | 1.022 | 2.172 | 0.47 | .911 | ns |
| Class1 vs Class4 | 0.283 | 1.731 | 0.16 | .967 | ns |
| Class1 vs Class5 | -3.194 | 1.455 | -2.20 | .219 | ns |
| Class2 vs Class3 | 4.195 | 2.527 | 1.66 | .219 | ns |
| Class2 vs Class4 | 3.456 | 2.315 | 1.49 | .226 | ns |
| Class2 vs Class5 | -0.020 | 2.018 | -0.01 | .992 | ns |
| Class3 vs Class4 | -0.739 | 2.556 | -0.29 | .966 | ns |
| Class3 vs Class5 | -4.216 | 2.449 | -1.72 | .219 | ns |
| Class4 vs Class5 | -3.477 | 2.172 | -1.60 | .219 | ns |

**State depression (CDRS-R)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -5.177 | 2.177 | -2.38 | .087 | ns (trend) |
| Class1 vs Class3 | -2.663 | 2.283 | -1.17 | .487 | ns |
| Class1 vs Class4 | -3.216 | 2.222 | -1.45 | .487 | ns |
| Class1 vs Class5 | -5.732 | 1.579 | -3.63 | .0028 | ** |
| Class2 vs Class3 | 2.514 | 2.917 | 0.86 | .555 | ns |
| Class2 vs Class4 | 1.960 | 3.048 | 0.64 | .650 | ns |
| Class2 vs Class5 | -0.556 | 2.462 | -0.23 | .853 | ns |
| Class3 vs Class4 | -0.553 | 2.978 | -0.19 | .853 | ns |
| Class3 vs Class5 | -3.069 | 2.615 | -1.17 | .487 | ns |
| Class4 vs Class5 | -2.516 | 2.673 | -0.94 | .555 | ns |

**A-LIFE interpersonal (aps205)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -0.465 | 0.238 | -1.95 | .127 | ns |
| Class1 vs Class3 | -0.028 | 0.180 | -0.16 | .877 | ns |
| Class1 vs Class4 | -0.389 | 0.192 | -2.03 | .127 | ns |
| Class1 vs Class5 | -0.597 | 0.154 | -3.88 | 1.0e-3 | ** |
| Class2 vs Class3 | 0.437 | 0.267 | 1.64 | .204 | ns |
| Class2 vs Class4 | 0.076 | 0.290 | 0.26 | .877 | ns |
| Class2 vs Class5 | -0.133 | 0.254 | -0.52 | .751 | ns |
| Class3 vs Class4 | -0.361 | 0.234 | -1.54 | .204 | ns |
| Class3 vs Class5 | -0.570 | 0.211 | -2.69 | .035 | * |
| Class4 vs Class5 | -0.209 | 0.231 | -0.91 | .522 | ns |

**A-LIFE global (apr209)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -0.405 | 0.253 | -1.60 | .219 | ns |
| Class1 vs Class3 | -0.044 | 0.180 | -0.25 | .884 | ns |
| Class1 vs Class4 | -0.446 | 0.156 | -2.86 | .021 | * |
| Class1 vs Class5 | -0.541 | 0.160 | -3.38 | .0074 | ** |
| Class2 vs Class3 | 0.361 | 0.280 | 1.29 | .329 | ns |
| Class2 vs Class4 | -0.041 | 0.280 | -0.15 | .884 | ns |
| Class2 vs Class5 | -0.136 | 0.271 | -0.50 | .804 | ns |
| Class3 vs Class4 | -0.402 | 0.206 | -1.95 | .127 | ns |
| Class3 vs Class5 | -0.497 | 0.217 | -2.29 | .072 | ns (trend) |
| Class4 vs Class5 | -0.095 | 0.206 | -0.46 | .804 | ns |

### 2.5 Sex (descriptive)

| Class | % male | % female |
|---|---|---|
| Class 1 | 79.5% | 20.5% |
| Class 2 | 55.2% | 44.8% |
| Class 3 | 65.0% | 35.0% |
| Class 4 | 48.9% | 51.1% |
| Class 5 | 50.0% | 50.0% |

χ²(4) = 36.43, p = 2.36e-7.

### 2.6 NSSI (self-harm)

Concurrent self-harm analysis, N = 310. Winsorized sum capped at the 95th
percentile (= 8 in this sample).

**Omnibus:**

| Outcome | BCH Wald χ² | df | p | Effect size | Sig |
|---|---|---|---|---|---|
| `nssi_sum_wins` (continuous) | 47.84 | 4 | 1.02e-9 | ω² = 0.168 | *** |

`in_range = TRUE`, `min_bch_weight = -0.72`. No FDR correction shown:
`nssi_sum_wins` is the only outcome in this panel, on its own sample
(N = 310, distinct from the main panel's N = 435), so there's no sibling
test in scope to correct against.

**Pairwise, `nssi_sum_wins`:**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -1.478 | 0.506 | -2.92 | .012 | * |
| Class1 vs Class3 | -1.750 | 0.750 | -2.33 | .049 | * |
| Class1 vs Class4 | -2.697 | 0.832 | -3.24 | .0059 | ** |
| Class1 vs Class5 | -3.031 | 0.578 | -5.25 | 1.6e-6 | *** |
| Class2 vs Class3 | -0.272 | 0.850 | -0.32 | .749 | ns |
| Class2 vs Class4 | -1.220 | 0.987 | -1.24 | .310 | ns |
| Class2 vs Class5 | -1.554 | 0.731 | -2.13 | .067 | ns (trend) |
| Class3 vs Class4 | -0.947 | 1.074 | -0.88 | .472 | ns |
| Class3 vs Class5 | -1.282 | 0.920 | -1.39 | .273 | ns |
| Class4 vs Class5 | -0.334 | 1.031 | -0.32 | .749 | ns |

**Reading:** Class 1 (Minimal) is significantly lower on NSSI than all
four other classes. No other pair reaches significance. N = 191
respondents were excluded from this analysis (no class match / no valid
last-completed-SCID wave).

---

## 3. K = 3 — Sensitivity solution

### 3.1 Item-endorsement profile

| Item | Class 1 | Class 2 | Class 3 |
|------|---------|---------|---------|
| sc01 | 0.060 | 0.671 | 0.557 |
| sc02 | 0.112 | 0.687 | 0.705 |
| sc03 | 0.044 | 0.188 | 0.862 |
| sc04 | 0.021 | 0.014 | 0.504 |
| sc05 | 0.052 | 0.323 | 0.625 |
| sc06 | 0.120 | 0.131 | 0.820 |
| sc07 | 0.036 | 0.292 | 0.692 |
| sc08 | 0.044 | 0.384 | 0.806 |

Class 1 = Minimal, Class 2 = Interpersonal / Abandonment, Class 3 =
Pervasive identity disturbance.

### 3.2 Class sizes (modal assignment, N = 435)

| Class | n | % |
|---|---|---|
| Class 1 | 286 | 65.7% |
| Class 2 | 73 | 16.8% |
| Class 3 | 76 | 17.5% |

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
| Class1 vs Class2 | -0.522 | 0.141 | -3.70 | 6.4e-4 | *** |
| Class1 vs Class3 | -0.155 | 0.109 | -1.43 | .153 | ns |
| Class2 vs Class3 | 0.366 | 0.168 | 2.18 | .044 | * |

**Impulsivity (CASI Category A)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -0.367 | 0.145 | -2.53 | .034 | * |
| Class1 vs Class3 | -0.238 | 0.111 | -2.14 | .048 | * |
| Class2 vs Class3 | 0.129 | 0.172 | 0.75 | .452 | ns |

**Irritability (IDA)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -1.586 | 0.466 | -3.40 | 9.9e-4 | *** |
| Class1 vs Class3 | -1.411 | 0.395 | -3.57 | 9.9e-4 | *** |
| Class2 vs Class3 | 0.175 | 0.561 | 0.31 | .755 | ns |

**State mania (YMRS)** — omnibus ns; no pairwise contrasts reach FDR
significance.

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -0.606 | 1.504 | -0.40 | .687 | ns |
| Class1 vs Class3 | -2.271 | 1.357 | -1.67 | .283 | ns |
| Class2 vs Class3 | -1.665 | 1.942 | -0.86 | .587 | ns |

**State depression (CDRS-R)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -1.228 | 1.769 | -0.69 | .488 | ns |
| Class1 vs Class3 | -4.373 | 1.477 | -2.96 | .0092 | ** |
| Class2 vs Class3 | -3.146 | 2.203 | -1.43 | .230 | ns |

**A-LIFE interpersonal (aps205)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -0.551 | 0.183 | -3.02 | .0038 | ** |
| Class1 vs Class3 | -0.505 | 0.137 | -3.68 | 6.9e-4 | *** |
| Class2 vs Class3 | 0.047 | 0.215 | 0.22 | .828 | ns |

**A-LIFE global (apr209)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -0.433 | 0.171 | -2.53 | .017 | * |
| Class1 vs Class3 | -0.494 | 0.143 | -3.46 | .0016 | ** |
| Class2 vs Class3 | -0.061 | 0.207 | -0.29 | .770 | ns |

### 3.5 Sex (descriptive)

| Class | % male | % female |
|---|---|---|
| Class 1 | 75.2% | 24.8% |
| Class 2 | 54.8% | 45.2% |
| Class 3 | 51.3% | 48.7% |

χ²(2) = 22.15, p = 1.55e-5.

### 3.6 NSSI (self-harm)

**Omnibus:**

| Outcome | BCH Wald χ² | df | p | Effect size | Sig |
|---|---|---|---|---|---|
| `nssi_sum_wins` | 49.28 | 2 | 1.99e-11 | ω² = 0.190 | *** |

`in_range = TRUE`, `min_bch_weight = -0.258`. No FDR correction shown, per
§2.6.

**Full pairwise:**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -2.050 | 0.563 | -3.64 | 4.0e-4 | *** |
| Class1 vs Class3 | -3.107 | 0.525 | -5.91 | 1.0e-8 | *** |
| Class2 vs Class3 | -1.057 | 0.779 | -1.36 | .175 | ns |

**Reading:** Class 1 (Minimal) is significantly lower on NSSI than both
Class 2 and Class 3; Class 2 vs Class 3 is not significant.

---

## 4. K = 4 — Sensitivity solution

### 4.1 Item-endorsement profile

| Item | Class 1 | Class 2 | Class 3 | Class 4 |
|------|---------|---------|---------|---------|
| sc01 | 0.050 | 0.056 | 0.641 | 0.630 |
| sc02 | 0.096 | 0.187 | 0.658 | 0.771 |
| sc03 | 0.014 | 0.385 | 0.180 | 0.886 |
| sc04 | 0.000 | 0.224 | 0.033 | 0.512 |
| sc05 | 0.055 | 0.000 | 0.310 | 0.720 |
| sc06 | 0.052 | 0.748 | 0.115 | 0.821 |
| sc07 | 0.016 | 0.183 | 0.280 | 0.763 |
| sc08 | 0.032 | 0.240 | 0.354 | 0.845 |

### 4.2 Class sizes (modal assignment, N = 435)

| Class | n | % |
|---|---|---|
| Class 1 | 262 | 60.2% |
| Class 2 | 28 | 6.4% |
| Class 3 | 82 | 18.9% |
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

**Aggression (CASI Category C)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.277 | 0.176 | 1.57 | .139 | ns |
| Class1 vs Class3 | -0.472 | 0.133 | -3.56 | 1.1e-3 | ** |
| Class1 vs Class4 | -0.260 | 0.116 | -2.24 | .038 | * |
| Class2 vs Class3 | -0.750 | 0.204 | -3.67 | 1.1e-3 | ** |
| Class2 vs Class4 | -0.537 | 0.196 | -2.75 | .012 | * |
| Class3 vs Class4 | 0.212 | 0.161 | 1.32 | .186 | ns |

**Impulsivity (CASI Category A)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.118 | 0.220 | 0.54 | .593 | ns |
| Class1 vs Class3 | -0.436 | 0.137 | -3.17 | .0091 | ** |
| Class1 vs Class4 | -0.310 | 0.115 | -2.70 | .021 | * |
| Class2 vs Class3 | -0.553 | 0.244 | -2.27 | .047 | * |
| Class2 vs Class4 | -0.427 | 0.232 | -1.84 | .098 | ns (trend) |
| Class3 vs Class4 | 0.126 | 0.162 | 0.78 | .525 | ns |

**Irritability (IDA)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.186 | 0.744 | 0.25 | .802 | ns |
| Class1 vs Class3 | -1.564 | 0.435 | -3.60 | 9.7e-4 | *** |
| Class1 vs Class4 | -1.702 | 0.412 | -4.13 | 2.1e-4 | *** |
| Class2 vs Class3 | -1.750 | 0.795 | -2.20 | .042 | * |
| Class2 vs Class4 | -1.888 | 0.784 | -2.41 | .032 | * |
| Class3 vs Class4 | -0.138 | 0.523 | -0.26 | .802 | ns |

**State mania (YMRS)** — omnibus ns; no pairwise contrasts reach FDR
significance.

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.291 | 2.304 | 0.13 | .900 | ns |
| Class1 vs Class3 | -0.562 | 1.397 | -0.40 | .884 | ns |
| Class1 vs Class4 | -3.014 | 1.446 | -2.08 | .223 | ns |
| Class2 vs Class3 | -0.853 | 2.537 | -0.34 | .884 | ns |
| Class2 vs Class4 | -3.305 | 2.577 | -1.28 | .399 | ns |
| Class3 vs Class4 | -2.451 | 1.867 | -1.31 | .399 | ns |

**State depression (CDRS-R)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -2.651 | 2.573 | -1.03 | .401 | ns |
| Class1 vs Class3 | -2.214 | 1.732 | -1.28 | .401 | ns |
| Class1 vs Class4 | -5.412 | 1.569 | -3.45 | .0034 | ** |
| Class2 vs Class3 | 0.437 | 2.946 | 0.15 | .882 | ns |
| Class2 vs Class4 | -2.761 | 2.859 | -0.97 | .401 | ns |
| Class3 vs Class4 | -3.198 | 2.184 | -1.46 | .401 | ns |

**A-LIFE interpersonal (aps205)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.102 | 0.192 | 0.53 | .714 | ns |
| Class1 vs Class3 | -0.556 | 0.181 | -3.08 | .0042 | ** |
| Class1 vs Class4 | -0.594 | 0.151 | -3.93 | 5.1e-4 | *** |
| Class2 vs Class3 | -0.658 | 0.240 | -2.74 | .0093 | ** |
| Class2 vs Class4 | -0.696 | 0.222 | -3.13 | .0042 | ** |
| Class3 vs Class4 | -0.038 | 0.215 | -0.18 | .860 | ns |

**A-LIFE global (apr209)**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | 0.095 | 0.219 | 0.43 | .694 | ns |
| Class1 vs Class3 | -0.473 | 0.170 | -2.78 | .016 | * |
| Class1 vs Class4 | -0.555 | 0.157 | -3.53 | .0025 | ** |
| Class2 vs Class3 | -0.568 | 0.254 | -2.24 | .038 | * |
| Class2 vs Class4 | -0.651 | 0.248 | -2.63 | .017 | * |
| Class3 vs Class4 | -0.083 | 0.210 | -0.39 | .694 | ns |

### 4.5 Sex (descriptive)

| Class | % male | % female |
|---|---|---|
| Class 1 | 76.3% | 23.7% |
| Class 2 | 64.3% | 35.7% |
| Class 3 | 54.9% | 45.1% |
| Class 4 | 49.2% | 50.8% |

χ²(3) = 25.06, p = 1.50e-5.

### 4.6 NSSI (self-harm)

**Omnibus:**

| Outcome | BCH Wald χ² | df | p | Effect size | Sig |
|---|---|---|---|---|---|
| `nssi_sum_wins` | 48.22 | 3 | 1.91e-10 | ω² = 0.169 | *** |

`in_range = TRUE`, `min_bch_weight = -0.553`. No FDR correction shown, per
§2.6.

**Full pairwise:**

| Contrast | est | SE | z | p_fdr | Sig |
|---|---|---|---|---|---|
| Class1 vs Class2 | -1.664 | 0.697 | -2.39 | .034 | * |
| Class1 vs Class3 | -2.206 | 0.534 | -4.13 | 1.1e-4 | *** |
| Class1 vs Class4 | -3.057 | 0.573 | -5.34 | 5.7e-7 | *** |
| Class2 vs Class3 | -0.542 | 0.850 | -0.64 | .524 | ns |
| Class2 vs Class4 | -1.393 | 0.882 | -1.58 | .171 | ns |
| Class3 vs Class4 | -0.851 | 0.775 | -1.10 | .327 | ns |

**Reading:** Class 1 (Minimal) is significantly lower on NSSI than all
three other classes. No other pair reaches significance.

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
