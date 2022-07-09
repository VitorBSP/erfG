pnorm <- function(x, mu, sigma){
  G = stats::pnorm(x, mean = mu, sd = sigma)
  f = 2*stats::pnorm((G/(1-G))*sqrt(2))-1
  f
}
