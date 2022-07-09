dgumbel <- function(x, mu, sigma) {
  if (rlang::is_installed("extraDistr")) {
    g = extraDistr::dgumbel(x, mu = mu, sigma = sigma)
    G = extraDistr::pgumbel(x, mu = mu, sigma = sigma)
    f = 2*g*exp(-(G/(1-G))^2)/(sqrt(pi)*(1-G)^2)
  }else {
    z = exp(-((x-mu)/sigma))
    f1 = 2*z*exp(-z - ((1)/(exp(z) - 1))^2)
    f2 = sqrt(pi)*sigma*((1 - exp(z))^2)
    f = f1/f2
  }
  f
}



