test_that("regex works", {
  expect_true(testin('exp'))
  expect_false(testin('dexp'))
  expect_false(testin(''))
  expect_false(testin(3))
  expect_error(testin(c('exp','derf')), 'Only one distribution per time')
  expect_error(testin(c('dexp','erf')), 'Only one distribution per time')
})
