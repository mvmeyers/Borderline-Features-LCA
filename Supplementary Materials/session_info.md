# Session Info

R and package versions used to produce the results in this supplement, for
reproducibility.

```r
sessionInfo()
```

```
R version 4.6.0 (2026-04-24 ucrt)
Platform: x86_64-w64-mingw32/x64
Running under: Windows 11 x64 (build 26100)

Matrix products: default
  LAPACK version 3.12.1

locale:
[1] LC_COLLATE=English_United States.utf8  LC_CTYPE=English_United States.utf8    LC_MONETARY=English_United States.utf8
[4] LC_NUMERIC=C                           LC_TIME=English_United States.utf8    

time zone: America/New_York
tzcode source: internal

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] knitr_1.51           multcompView_0.1-11  scales_1.4.0         ggplot2_4.0.3        purrr_1.2.2          tidyr_1.3.2         
 [7] dplyr_1.2.1          glca_1.4.2           poLCA_1.6.0.2        MASS_7.3-65          scatterplot3d_0.3-45

loaded via a namespace (and not attached):
 [1] utf8_1.2.6         generics_0.1.4     class_7.3-23       lattice_0.22-9     hms_1.1.4          digest_0.6.39      magrittr_2.0.5    
 [8] evaluate_1.0.5     grid_4.6.0         RColorBrewer_1.1-3 mvtnorm_1.4-0      fastmap_1.2.0      cellranger_1.1.0   Matrix_1.7-5      
[15] e1071_1.7-17       httr_1.4.8         DescTools_0.99.60  textshaping_1.0.5  cli_3.6.6          rlang_1.2.0        expm_1.0-0        
[22] withr_3.0.2        yaml_2.3.12        otel_0.2.0         rootSolve_1.8.2.4  tools_4.6.0        tzdb_0.5.0         lmom_3.3          
[29] gld_2.6.8          Exact_3.3          forcats_1.0.1      boot_1.3-32        vctrs_0.7.3        R6_2.6.1           proxy_0.4-29      
[36] lifecycle_1.0.5    fs_2.1.0           ragg_1.5.2         pkgconfig_2.0.3    pillar_1.11.1      gtable_0.3.6       glue_1.8.1        
[43] data.table_1.18.4  Rcpp_1.1.1-1.1     systemfonts_1.3.2  haven_2.5.5        xfun_0.58          tibble_3.3.1       tidyselect_1.2.1  
[50] rstudioapi_0.18.0  farver_2.1.2       htmltools_0.5.9    labeling_0.4.3     rmarkdown_2.31     readr_2.2.0        compiler_4.6.0    
[57] S7_0.2.2           readxl_1.5.0
```

Key packages for the statistical methods described in `detailed_methods.md`
and `closed_form_bch.R`:
- `poLCA` 1.6.0.2 (class enumeration and posterior class probabilities)
- `glca` 1.4.2 (bootstrap likelihood-ratio test)
- `MASS` 7.3-65 (loaded first, per this project's convention, to avoid
  `MASS::select()` silently masking `dplyr::select()`)
- `dplyr` 1.2.1 / `tidyr` 1.3.2 / `purrr` 1.2.2 (data pipelines)
- `ggplot2` 4.0.3 / `scales` 1.4.0 (figures)
- `multcompView` 0.1-11 (compact-letter displays for pairwise contrasts)

The closed-form BCH estimator itself (`bch_weights()`,
`class_distal_report()`) uses base R only.
