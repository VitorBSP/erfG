dbetagp <- function(x, xi, sigma, alpha, beta1) {
  z <- 1 + xi * x / sigma
  G <- 1 - z^(-1 / xi)
  g <- z^(-1 / xi - 1) / sigma
  f <- g * G^(alpha - 1) * z^(-1 / xi * (beta1 - 1)) / beta(alpha, beta1)
  f
}
