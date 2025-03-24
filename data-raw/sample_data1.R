# randomly generated data to be used as sample data
# for triangulate() and plot_triangle() functions

set.seed(121)  # For reproducibility

# Generate points that are uniformly distributed
sample_data1 <- matrix(runif(10, 0, 10), nrow = 5, ncol = 2)
colnames(sample_data1) <- c('x', 'y')

usethis::use_data(sample_data1, overwrite = TRUE)
