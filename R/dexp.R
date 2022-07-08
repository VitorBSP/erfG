dexp <- function(x, alpha){
  g = alpha*exp(-alpha*x)
  G = 1- exp(-alpha*x)
  f = 2*g*exp(-(G/(1-G))^2)/(sqrt(pi)*(1-G)^2)
  f
}
