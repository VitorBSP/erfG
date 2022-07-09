x = rweibull(1,10,2)
alpha = rweibull(1,100)

test_that("pexp works", {
  expect_true(pexp(x = x, alpha = alpha) >= 0)
  expect_true(pexp(x = x, alpha = alpha) <= 1)
})
