x = rweibull(1,45,2)
alpha = rweibull(1,13,3)

test_that("dexp works", {
  expect_true(dexp(x = x, alpha = alpha) >= 0)
  expect_true(dexp(x = x, alpha = alpha) <= 1)
  #integrate(dexp, 0,Inf)
})
