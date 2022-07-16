#' perf
#'
#' This function applies erf to density of the model that you choose.
#'
#'
#' @param x     Value to calculate the density.
#'
#' @param dist     Distribution that you want to use.
#' @param ...     Specific arguments of your model.
#'
#'
#' @examples
#' perf(2, dist = "exp", alpha = 3)
#'
#'
#' perf(2, dist = "norm")
#'@export
perf <- function(x, dist, ...) {
  sapply(x, erf, type = 'p', dist, ...)
}
