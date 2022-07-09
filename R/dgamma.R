dgamma <- function(x, alpha, beta) {
  g = stats::dgamma(x, shape = alpha, rate = beta)
  G = stats::pgamma(x, shape = alpha, rate = beta)
  f = 2*g*exp(-(G/(1-G))^2)/(sqrt(pi)*(1-G)^2)
  f
}
