
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nghiaagentrutils

<!-- badges: start -->

<!-- badges: end -->

I set up this packages to contain my frequently used functions:

- `recode_msigdbh`: Make MSigDB Hallmark gene set names more readable.

## Installation

You can install the development version of nghiaagentrutils from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("nghiaagent/nghiaagentrutils")
```

## Examples

### Making MSigDB Hallmark gene set names more readable

Supply the `recode_msigdbh()` function with your vector of MSigDB
Hallmark gene set names.

Ensure the gene set names are derived from the publicly available GMT
files at <https://www.gsea-msigdb.org/gsea/msigdb>

``` r
## Example
x <- c(
  "HALLMARK_ADIPOGENESIS",
  "HALLMARK_G2M_CHECKPOINT",
  "HALLMARK_IL6_JAK_STAT3_SIGNALING"
)
recode_msigdbh(x)
#> [1] "Adipogenesis"             "G2/M checkpoint"         
#> [3] "IL-6/JAK/STAT3 signaling"
```
