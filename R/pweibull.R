pweibull <- function(x, alpha, gamma) {
  G = 1 - exp(-alpha*x^gamma)
  f = Erf(G / (1-G))
  f
}
