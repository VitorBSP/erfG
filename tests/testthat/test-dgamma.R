x = rweibull(1,5,2)
alpha = rweibull(1,3,1)
beta = rweibull(1,1,3)

test_that("dgamma works", {
  expect_true(dgamma(x = x, alpha = alpha, beta = beta) >= 0)
  expect_true(dgamma(x = x, alpha = alpha, beta = beta) <= 1)
  #integrate(dgamma, -Inf,Inf)
})
