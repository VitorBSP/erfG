pexp <- function(x, alpha){
  g = alpha*exp(-alpha*x)
  G = 1- exp(-alpha*x)
  f =  2*stats::pnorm((G/(1-G))*sqrt(2))-1
  f
}
