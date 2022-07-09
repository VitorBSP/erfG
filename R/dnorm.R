dnorm <- function(x, mu, sigma){
  if(is.numeric(c(x, mu, sigma))==FALSE){
    stop('All of the arguments must be numeric')
  }

  if(length(c(mu, sigma))!=2){
      stop('All of the parameters must be scalars')
  }
  g = stats::dnorm(x, mean = mu, sd = sigma)
  G = stats::pnorm(x, mean = mu, sd = sigma)
  2*g*exp(-(G/(1-G))^2)/(sqrt(pi)*(1-G)^2)
}
