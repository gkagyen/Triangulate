#' Connect 5 points to form 3 triangles
#'
#' This function creates three 3 triangles by connecting
#' five (5) points in a fixed pattern: 1-2-3, 2-4-5 and 3-5-2
#'
#' @param points a 5x2 numeric matrix where each row represent a point
#'  with x, y coordinates
#'
#' @returns A list containing points (vertices) and edges of triangles
#' @details The function assumes that the 5 points are not collinear. If points are
#'  collinear the triangulation is still valid but may not be 'geometric'
#' @export
#'
#' @examples
#' points <- matrix(c(0,0,1,1,2,0,3,1,4,0), nrow=5, byrow=TRUE)
#' triangulate(points)
triangulate <- function(points){
  # Make sure points contain exactly five (5) rows and two (2) columns
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

  # remove duplicate edges
  edges <- unique(edges)

  return(list(points = points, edges = edges))

}


