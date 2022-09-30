test_that("Check that column 1 is startTime", {
  expect_equal(colnames(weather_forcast("58.4108,15.6214", "metric"))[1], 'startTime')
})

test_that("Check that column 2 is values", {
  expect_equal(colnames(weather_forcast("58.4108,15.6214", "metric"))[2], 'values')
})


test_that("number of column with wrong input = 0", {
  expect_equal(ncol(weather_forcast("123123", "metric")), 0)
})

test_that("number of rows with wrong input = 0", {
  expect_equal(nrow(weather_forcast("123123", "metric")), 0)
})

