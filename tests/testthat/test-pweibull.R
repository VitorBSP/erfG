x = rweibull(1,5,2)
alpha = rweibull(1,3,1)
gamma = rweibull(1,1,3)

test_that("pweibull works", {
  expect_true(pweibull(x = x, alpha = alpha, gamma = gamma) >= 0)
  expect_true(pweibull(x = x, alpha = alpha, gamma = gamma) <= 1)
})
