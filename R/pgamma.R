pgamma <- function(x, alpha, beta) {
  G = stats::pgamma(x, shape = alpha, rate = beta)
  f = Erf(G/(1-G))
  f
}
