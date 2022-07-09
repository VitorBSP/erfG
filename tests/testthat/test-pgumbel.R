x = rweibull(1,3)
mu = rnorm(1)
sigma = rweibull(1,1,3)

test_that("pgumbel works", {
  expect_true(pgumbel(x = x, mu = mu, sigma = sigma) >= 0)
  expect_true(pgumbel(x = x, mu = mu, sigma = sigma) <= 1)
})
