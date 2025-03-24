# Randomly generated data to be used as sample data
# for triangulate() and plot_triangle() functions

set.seed(144) # For reproducibility

# Generate points with some clustering
sample_data2 <- matrix(c(runif(5, -10, 10),
                         rnorm(5, mean = 0, sd = 1.5)),
                       nrow = 5)
colnames(sample_data2) <- c('x', 'y')

usethis::use_data(sample_data2, overwrite = TRUE)
