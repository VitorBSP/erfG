ploglogis <- function(x, alpha, beta) {
  g = (1+(x/alpha)^beta)^(-2)*(beta*x^(beta-1)/(alpha^beta))
  G = 1-(1+(x/alpha)^beta)^(-1)
  f =  2*stats::pnorm((G/(1-G))*sqrt(2))-1
  f
}
