#' log_lerf
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
#' derf(2, dist = "egep", xi = 3, a = 3, b = 3)
#'
#'
#' derf(2, dist = "betagp", xi = 3, sigma = 1, beta1 = 3, alpha = 2)
#'
log_lerf <- function(x, dist, ...) {
  sum(log(erf(type = "d", x, dist, ...)))
}
