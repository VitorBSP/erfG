x = rweibull(1,3)
mu = rnorm(1)
sigma = rweibull(1,1,3)

test_that("dgumbel works", {
  expect_true(dgumbel(x = x, mu = mu, sigma = sigma) >= 0)
  expect_true(dgumbel(x = x, mu = mu, sigma = sigma) <= 1)
  #integrate(dgumbel, -Inf,Inf)
})
