test_that("multiplication works", {
  expect_true(derf(2, "exp", alpha = 1) >= 0)
  #expect_error(derf(2, "chen", alpha = 1), "Distribution not yet implemented")

})
