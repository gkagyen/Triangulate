# Connect points to form triangles.
#
# This is a function that forms three 3 triangles
# by connecting any five (5) points in a 2D plane
# following the cartesian coordinates system

triangulate <- function(points){
  # Make sure points contain exactly five (5) rows and
  # two (2) columns
  if(nrow(points) != 5 || ncol(points) != 2){
    stop("Input must be a 5x2 matrix of points.")
  }

  # Create edges for the triangles
  # We assume the points are not collinear
  edges <- matrix(
    c(1,2, 2,3, 3,1,  # triangle 1
      2,4, 4,5, 5,2,  # triangle 2
      3,5, 5,2, 2,3), # triangle 3
    ncol = 2, byrow = TRUE
  )

  return(list(points = points, edges = edges))

}
