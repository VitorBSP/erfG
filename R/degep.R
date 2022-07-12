degep <- function(x, xi, a, b, sigma = 1) {
  p1 <- 1 + xi * x / sigma
  g <- a * b * p1^(-(a + xi) / xi) * (1 - p1^(-a / xi))^(b - 1) / sigma
  g
}
