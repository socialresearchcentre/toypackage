
test_that("Addition works", {
  expect_equal(add(2, 2), 4)
  expect_true(is.na(add(2, NA)))
  expect_error(add(2, "2"), regexp = "non-numeric argument to binary operator")
})


