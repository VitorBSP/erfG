dweibull <- function(x, alpha, gamma) {
  g = alpha*gamma*x^(gamma-1)*exp(-alpha*x^gamma)
  G = 1- exp(-alpha*x^gamma)
  f = 2*g*exp(-(G/(1-G))^2)/(sqrt(pi)*(1-G)^2)
  f
}
