pnorm <- function(x, mu = 0, sigma = 1){
  G = stats::pnorm(x, mean = mu, sd = sigma)
  f = Erf(G / (1 - G))
  f
}
