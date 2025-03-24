
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Triangulate

<!-- badges: start -->
<!-- badges: end -->

This is a small R package that provides functions for triangulating five
points into three triangles. It includes a triangulation function, a
plotting utility and example datasets

## Installation

You can install the development version of Triangulate from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("gkagyen/Triangulate")
```

## Features

**`triangulate()`**: This function connects five points (given a 5x2
matrix) into three triangles returning a list with the points and edges.
`triangulate()` connects the five points using a fixed pattern: 1-2-3,
2-4-5, 3-5-2.

**`plot_triangles()`**: This function helps to visualise the
triangulation using `ggplot2`, labelling points with their respective
coordinates.

**Example datasets**: Two built-in 5x2 matrices (`sample_data1` and
`sample_data2`) for demonstration

## Example Usage

Here is a quick example to triangulate and plot five points

``` r
library(Triangulate)

# create a 5x2 matrix of points
points <- matrix(c(0,0,1,1,2,0,3,1,4,0), nrow = 5, byrow = TRUE)

# apply triangulation
tri_obj <- triangulate(points)

# visualise triangulation
tri_show <- plot_triangles(tri_obj)
print(tri_show)
```

<img src="man/figures/README-example-1.png" width="100%" />

### Using In-Built Datasets

``` r
sample_data1
#>             x        y
#> [1,] 3.992223 4.210237
#> [2,] 9.515923 4.676918
#> [3,] 5.431508 6.132936
#> [4,] 7.627956 2.377114
#> [5,] 5.508387 2.546702
plot_triangles(triangulate(sample_data1))
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

``` r

sample_data2
#>                x          y
#> [1,] -9.01170765  0.5321647
#> [2,]  4.13892163  0.9122417
#> [3,]  4.53365277  1.3850328
#> [4,]  0.01981274 -1.3775058
#> [5,] -3.64417294 -1.5812229
plot_triangles(triangulate(sample_data2))
```

<img src="man/figures/README-unnamed-chunk-2-2.png" width="100%" />

## Motivations

This package was developed as part of the ***Google Summer of Code
2025*** application under the R projects’ **“Create an R Code only
version of the `tripack` functions”** project
