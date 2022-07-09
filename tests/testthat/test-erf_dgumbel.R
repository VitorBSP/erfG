x=rweibull(1,3)
mu=rnorm(1)
sigma=rweibull(1,1,3)
test_that("erf_pnorm works", {
  expect_true(erf_dgumbel(x = x, mu = mu, sigma = sigma) >= 0)
  expect_true(erf_dgumbel(x=x,mu=mu,sigma=sigma)<=1)
  #integrate(erf_dgumbel, -Inf,Inf)
})
