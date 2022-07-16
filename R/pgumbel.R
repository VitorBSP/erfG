pgumbel <- function(x, mu, sigma){
  z = exp(-(x-mu)/sigma)
  f = Erf(1/(exp(z) - 1))
  f
}
