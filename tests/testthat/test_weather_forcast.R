
test_that("Check that columns are alright", {
  expect_equal(colnames(weather_forcast("58.4108,15.6214", "metric"))[1], 'startTime')
  expect_equal(colnames(weather_forcast("58.4108,15.6214", "metric"))[2], 'values')
})
