x = stats::rweibull(1,3)
mu = stats::rnorm(1)
sigma = stats::rweibull(1,1,3)

test_that("pgumbel works", {
  expect_true(pgumbel(x = x, mu = mu, sigma = sigma) >= 0)
  expect_true(pgumbel(x = x, mu = mu, sigma = sigma) <= 1)
})
