# R Notched Boxplot — Mariana Trench Depth Distribution

An R script drawing a notched box-and-whisker plot of the bathymetric depth
distribution across the 25 cross-section profiles of the Mariana Trench.

## Related publication

This script (Boxplot-Notched.r) produced Figure 6 in:

Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R
Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.

- DOI: https://doi.org/10.3846/gac.2019.3785
- figshare: https://doi.org/10.6084/m9.figshare.9762860
- HAL: https://hal.science/hal-02277500
- Zenodo: https://zenodo.org/record/3385005
- SSRN: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3447481
- ISSN: 2029-6991 (Scopus)

## Scripts

- Boxplot-Notched.r: reads Depths.csv, removes NA rows, and draws a horizontal
  notched boxplot with ggpubr::ggboxplot (notch = TRUE so the notches
  approximate the 95% confidence interval of the median, magma palette, grey
  outlier points). Notch overlap indicates non-significant median differences.
- Boxplot_color.r: a coloured variant of the same plot.

(Boxplot-12112025.r and Boxplot-23102025.r are later, unrelated FAOSTAT
examples.)

## Methods

- Box-and-whisker summary (quartiles, whiskers, outliers) with median-confidence
  notches; distribution comparison across categories.

## Data

- Depths.csv: depths (m) along 25 Mariana Trench cross-section profiles.

## Requirements

- R (>= 3.5); packages: ggpubr, ggplot2, RColorBrewer

## Author and citation

Polina Lemenkova — ORCID https://orcid.org/0000-0002-5759-1089
Cite: Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology
Using R Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.
https://doi.org/10.3846/gac.2019.3785

## License

MIT — see the LICENSE file (Copyright Polina Lemenkova).
