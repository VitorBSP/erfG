pgumbel <- function(x, mu, sigma){
  if (rlang::is_installed("extraDistr")) {
    G = extraDistr::pgumbel(x, mu = mu, sigma = sigma)
    2*stats::pnorm((G/(1-G))*sqrt(2))-1
  }else {
  z = exp(-(x-mu)/sigma)
  f = Erf(1/(exp(z) - 1))
  }
  f
}
