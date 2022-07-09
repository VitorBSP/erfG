pgamma <- function(x, alpha, beta) {
  G = stats::pgamma(x, shape = alpha, rate = beta)
  f = 2*stats::pnorm((G/(1-G))*sqrt(2))-1
  f
}
