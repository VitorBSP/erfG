x = stats::rnorm(1)
mu = stats::rnorm(1,10,100)
sigma = stats::rnorm(1,5,2)

test_that("erf_pnorm works", {
  expect_true(pnorm(x = x, mu = mu, sigma = sigma) >= 0)
  expect_true(pnorm(x = x, mu = mu, sigma = sigma) <= 1)
})
