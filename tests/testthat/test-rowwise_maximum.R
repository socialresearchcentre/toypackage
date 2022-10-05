test_that("Rowwise max works on a dataframe", {

  x = 1:5
  y = 6:10 # y is larger than x element-wise
  dat <- data.frame(x, y)
  expect_equal(rowwise_max(dat), y)

})

test_that("Convert NA to 0 works fine in the function", {

  x = c(1:5, NA_real_)
  y = c(NA_real_, 6:10)
  dat <- data.frame(x, y)
  expect_equal(rowwise_max(dat), c(1, 6:10))

})

test_that("The error message works properly!", {

  expect_error(rowwise_max(iris), regexp = "Not all variables are numeric!")

})
