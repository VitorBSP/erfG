dnorm <- function(x, mu, sigma){
  g = dnorm(x, mean = mu, sd = sigma)
  G = pnorm(x, mean = mu, sd = sigma)
  f = 2*g*exp(-(G/(1-G))^2)/(sqrt(pi)*(1-G)^2)
  f
}
