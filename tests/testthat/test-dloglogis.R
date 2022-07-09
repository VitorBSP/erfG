x = rweibull(1,5,2)
alpha = rweibull(1,3,1)
beta = rweibull(1,1,3)

test_that("dloglogis works", {
  expect_true(dloglogis(x = x, alpha = alpha, beta = beta) >= 0)
  expect_true(dloglogis(x = x, alpha = alpha, beta = beta) <= 1)
  #integrate(dloglogis, 0,Inf)
})
