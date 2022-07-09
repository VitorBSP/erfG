x=rnorm(1)
mu=rnorm(1,10,100)
sigma=rnorm(1,5,2)
test_that("erf_pnorm works", {
  expect_true(erf_pnorm(x=x,mu=mu,sigma=sigma)>=0)
  expect_true(erf_pnorm(x=x,mu=mu,sigma=sigma)<=1)
})
