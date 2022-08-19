#' log_lerf
#'
#' This function applies erf to density of the model that you choose.
#'
#'
#' @param x Values to calculate the likelihood.
#'
#' @param dist     Distribution that you want to use.
#' @param param    Vector of parameters in the distribution (adequate to optim()).
#'
#'
#' @examples
#'
#' If you want to calculate log likelihood of erf-Weibull:
#' x <- c(0, rlnorm(50))
#' log_lerf(x, dist = 'weibull', param = c(alpha = 1, gamma = pi))
#'
#' If you want to calculate log likelihood of erf-Normal:
#' x <- rnorm(100)
#' log_lerf(x, dist = 'weibull', param = c(mu = 0, sigma = 1))
#'
#' @export
log_lerf <- function(x, dist, param) {
  param = param
  call = parse(text=paste0('d', dist,'(x' , ',',
                           paste0(collapse = ',', param),')',
                           collapse = ''))
  fn = function(x) eval(call)
  return(sum(log(sapply(x, fn))))
}
