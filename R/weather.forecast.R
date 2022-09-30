library("httr")
library("jsonlite")

#' @title Get the weather information sources used between specified datetimes for a specified region.
#' @param location string with longitude and latitude eg 58.4108,15.6214
#' @param weatherUnit string with unit for weather like metric or imperial
#' @return Data frame of temperature of provided location
#' @export
#'
#' @examples
#' weather_forcast("58.4108,15.6214", "metric")
#'
weather_forcast <-
  function(location, weatherUnit, apiKey) {
    if(missing(location) || missing(apiKey) || missing(weatherUnit)) {
      stop("Param missing")
    }
    if (!(weatherUnit == 'metric' || weatherUnit == 'imperial')) {
      stop("Invalid param weatherUnit")
    }

    result <- tryCatch({
      # tempUrl <- paste("https://api.tomorrow.io/v4/timelines?location=",location,"&fields=temperature&timesteps=1d&units=",weatherUnit,"&apikey=", Sys.getenv("apikey"), sep = "")
      tempUrl <- paste("https://api.tomorrow.io/v4/timelines?location=",location,"&fields=temperature&timesteps=1d&units=",weatherUnit,"&apikey=", apiKey, sep = "")

      print(tempUrl)
      res <- httr::GET(tempUrl)

      resp <- httr::content(res, 'text')
      jsonRespParsed<- jsonlite::fromJSON(resp)
      return(as.data.frame(jsonRespParsed$data$timelines$intervals))
    }, warning = function(war) {
      print("WARNING:")
      print(war)
    }, error = function(err) {
      print("Error::")
      print(err)
    })
  }







































