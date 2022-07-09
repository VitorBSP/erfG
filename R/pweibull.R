pweibull <- function(x, alpha, gamma) {
  G = 1- exp(-alpha*x^gamma)
  f =  2*stats::pnorm((G/(1-G))*sqrt(2))-1
  f
}
