erf_pnorm <- function(x, mu, sigma){
  G = pnorm(x, mean = mu, sd = sigma)
  f = 2*pnorm((G/(1-G))*sqrt(2))-1
  f
}
