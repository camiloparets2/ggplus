#' Simplified scatter plot using ggplot2
#'
#' @param data A data.frame containing the x and y variables.
#' @param x The x variable name (unquoted) or a column index.
#' @param y The y variable name (unquoted) or a column index.
#' @param color The color of the points.
#' @param size The size of the points.
#'
#' @export
#' @examples
#' library(ggplot2)
#' ggscatter(mtcars, x = "mpg", y = "hp", color = "blue", size = 3)
ggscatter <- function(data, x, y, color = "black", size = 1) {
  # Load required packages
  require(ggplot2)

  # Convert x and y to strings if they are column indices
  if (is.numeric(x)) {
    x <- colnames(data)[x]
  }
  if (is.numeric(y)) {
    y <- colnames(data)[y]
  }

  # Create the ggplot2 scatter plot
  plot <- ggplot2::ggplot(data) +
    ggplot2::aes_string(x = x, y = y) +
    ggplot2::geom_point(color = color, size = size) +
    ggplot2::xlab(x) +
    ggplot2::ylab(y)

  return(plot)
}
usethis::use_git()
