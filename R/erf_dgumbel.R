erf_dgumbel <- function(x, mu = 0, sigma = 1){
  z = exp(-(x-mu)/sigma)
  f1 = 2*z*exp(-z - ((1)/(exp(z) - 1))^2)
  f2 = sqrt(pi)*sigma*((1 - exp(z))^2)
  f1/f2
}
