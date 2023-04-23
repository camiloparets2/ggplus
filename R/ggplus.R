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
#' Simplified bar plot using ggplot2
#'
#' @param data A data.frame containing the categorical variable and the count variable.
#' @param x The categorical variable name (unquoted) or a column index.
#' @param y The count variable name (unquoted) or a column index.
#' @param fill The fill color of the bars.
#'
#' @export
#' @examples
#' library(ggplot2)
#' ggbar(mtcars, x = "cyl", y = "mpg", fill = "steelblue")
ggbar <- function(data, x, y, fill = "steelblue") {
  # Load required packages
  require(ggplot2)
  
  # Convert x and y to strings if they are column indices
  if (is.numeric(x)) {
    x <- colnames(data)[x]
  }
  if (is.numeric(y)) {
    y <- colnames(data)[y]
  }
  
  # Create the ggplot2 bar plot
  plot <- ggplot2::ggplot(data) +
    ggplot2::aes_string(x = x, y = y, fill = I(fill)) +
    ggplot2::geom_bar(stat = "identity") +
    ggplot2::xlab(x) +
    ggplot2::ylab(y)
  
  return(plot)
}
#' Simplified line plot using ggplot2
#'
#' @param data A data.frame containing the x and y variables.
#' @param x The x variable name (unquoted) or a column index.
#' @param y The y variable name (unquoted) or a column index.
#' @param color The color of the line.
#' @param size The size of the line.
#'
#' @export
#' @examples
#' library(ggplot2)
#' ggline(mtcars, x = "mpg", y = "hp", color = "red", size = 1)
ggline <- function(data, x, y, color = "black", size = 1) {
  # Load required packages
  require(ggplot2)
  
  # Convert x and y to strings if they are column indices
  if (is.numeric(x)) {
    x <- colnames(data)[x]
  }
  if (is.numeric(y)) {
    y <- colnames(data)[y]
  }
  
  # Create the ggplot2 line plot
  plot <- ggplot2::ggplot(data) +
    ggplot2::aes_string(x = x, y = y) +
    ggplot2::geom_line(color = color, size = size) +
    ggplot2::xlab(x) +
    ggplot2::ylab(y)
  
  return(plot)
}
#' Simplified histogram using ggplot2
#'
#' @param data A data.frame containing the variable of interest.
#' @param x The variable name (unquoted) or a column index.
#' @param bins The number of bins for the histogram.
#' @param fill The fill color of the bars.
#'
#' @export
#' @examples
#' library(ggplot2)
#' gghist(mtcars, x = "mpg", bins = 30, fill = "steelblue")
gghist <- function(data, x, bins = 30, fill = "steelblue") {
  # Load required packages
  require(ggplot2)
  
  # Convert x to a string if it is a column index
  if (is.numeric(x)) {
    x <- colnames(data)[x]
  }
  
  # Create the ggplot2 histogram
  plot <- ggplot2::ggplot(data) +
    ggplot2::aes_string(x = x) +
    ggplot2::geom_histogram(bins = bins, fill = fill, color = "black") +
    ggplot2::xlab(x) +
    ggplot2::ylab("Count")
  
  return(plot)
}
#' Simplified box plot using ggplot2
#'
#' @param data A data.frame containing the x (categorical) and y (continuous) variables.
#' @param x The x categorical variable name (unquoted) or a column index.
#' @param y The y continuous variable name (unquoted) or a column index.
#' @param fill The fill color of the boxes.
#'
#' @export
#' @examples
#' library(ggplot2)
#' ggbox(mtcars, x = "cyl", y = "mpg", fill = "steelblue")
ggbox <- function(data, x, y, fill = "steelblue") {
  # Load required packages
  require(ggplot2)
  
  # Convert x and y to strings if they are column indices
  if (is.numeric(x)) {
    x <- colnames(data)[x]
  }
  if (is.numeric(y)) {
    y <- colnames(data)[y]
  }
  
  # Create the ggplot2 box plot
  plot <- ggplot2::ggplot(data) +
    ggplot2::aes_string(x = x, y = y, fill = I(fill)) +
    ggplot2::geom_boxplot() +
    ggplot2::xlab(x) +
    ggplot2::ylab(y)
  
  return(plot)
}

usethis::use_git()
