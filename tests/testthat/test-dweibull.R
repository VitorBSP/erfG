x = rweibull(1,15,2)
alpha = rweibull(1,3)
gamma = rweibull(1,5)

test_that("dweibull works", {
  expect_true(dweibull(x = x, alpha = alpha, gamma = gamma) >= 0)
  expect_true(dweibull(x = x, alpha = alpha, gamma = gamma) <= 1)
  #integrate(dweibull, 0,Inf)
})
