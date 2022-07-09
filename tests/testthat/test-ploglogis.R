x = rweibull(1,5,2)
alpha = rweibull(1,3,1)
beta = rweibull(1,1,3)

test_that("ploglogis works", {
  expect_true(ploglogis(x = x, alpha = alpha, beta = beta) >= 0)
  expect_true(ploglogis(x = x, alpha = alpha, beta = beta) <= 1)
})
