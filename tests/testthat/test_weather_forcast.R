
test_that("Check that columns are not alright", {
  expect_equal(ncol(weather_forcast("58.4108,15.6214", "metric", "fakeAPIKey")), 0)
  expect_equal(nrow(weather_forcast("58.4108,15.6214", "metric", "fakeAPIKey")), 0)
})
