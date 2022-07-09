dloglogis <- function(x, alpha, beta) {
  g = (1+(x/alpha)^beta)^(-2)*(beta*x^(beta-1)/(alpha^beta))
  G = 1-(1+(x/alpha)^beta)^(-1)
  f = 2*g*exp(-(G/(1-G))^2)/(sqrt(pi)*(1-G)^2)
  f
}
