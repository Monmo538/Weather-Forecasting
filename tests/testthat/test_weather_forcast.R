
test_that("Check that columns are not alright", {
  expect_equal(ncol(weather_forcast("58.4108,15.6214", "metric", "fakeAPIKey")), 0)
  expect_equal(nrow(weather_forcast("58.4108,15.6214", "metric", "fakeAPIKey")), 0)
})

test_that("Check that invalid params throw errors", {
  expect_error(weather_forcast("58.4108,15.6214", "metric2", "fakeAPIKey"))
  expect_error(weather_forcast("58.4108,15.6214", "imperial2", "fakeAPIKey"))
})

test_that("Check that missing params throw errors", {
  expect_error(weather_forcast(location = "58.4108,15.6214"))
  expect_error(weather_forcast(weatherUnit = "metric"))
  expect_error(weather_forcast(apiKey = "fakeAPIKey"))

  expect_error(weather_forcast(location = "58.4108,15.6214", weatherUnit = "metric"))
  expect_error(weather_forcast(apiKey = "fakeAPIKey", weatherUnit = "metric"))
  expect_error(weather_forcast(apiKey = "fakeAPIKey", location = "58.4108,15.6214"))
})
