x = rnorm(1,10,15)
mu = rnorm(1,10,3)
sigma = rnorm(1,15,2)

test_that("dnorm works", {
  expect_true(dnorm(x = x, mu = mu , sigma = sigma) >= 0)
  expect_true(dnorm(x = x, mu = mu , sigma = sigma) <= 1)
  expect_error(dnorm(x = 'a', mu = mu , sigma = sigma), 'All of the arguments must be numeric')
  expect_error(dnorm(x = x, mu = 'mu', sigma = sigma), 'All of the arguments must be numeric')
  expect_error(dnorm(x = x, mu = mu , sigma='sigma'), 'All of the arguments must be numeric')
  expect_error(dnorm(x = x, mu = c(mu,mu), sigma = sigma), 'All of the parameters must be scalars')
  expect_error(dnorm(x = x, mu = mu , sigma=c(mu,sigma)), 'All of the parameters must be scalars')
  expect_true(integrate(dnorm, mu-(3*sigma), mu+(3*sigma), mu = mu, sigma = sigma)$value > 0.98)
})
