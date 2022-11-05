
test_that("Check that columns are not alright", {
  expect_equal(ncol(weather_forcast("58.4108,15.6214", "metric", "fakeAPIKey")), 0)
  expect_equal(nrow(weather_forcast("58.4108,15.6214", "metric", "fakeAPIKey")), 0)
})

test_that("Check that invalid params throw errors", {
  expect_error(weather_forcast("58.4108,15.6214", "metric2", "fakeAPIKey"), "Invalid param weatherUnit")
  expect_error(weather_forcast("58.4108,15.6214", "imperial2", "fakeAPIKey"), "Invalid param weatherUnit")
})

test_that("Check that missing params throw errors", {
  expect_error(weather_forcast(location = "58.4108,15.6214"), "Param missing")
  expect_error(weather_forcast(weatherUnit = "metric"), "Param missing")
  expect_error(weather_forcast(apiKey = "fakeAPIKey"), "Param missing")

  expect_error(weather_forcast(location = "58.4108,15.6214", weatherUnit = "metric"), "Param missing")
  expect_error(weather_forcast(apiKey = "fakeAPIKey", weatherUnit = "metric"), "Param missing")
  expect_error(weather_forcast(apiKey = "fakeAPIKey", location = "58.4108,15.6214"), "Param missing")
})
