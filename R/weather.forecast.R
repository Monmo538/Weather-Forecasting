library("httr")
library("jsonlite")
library("dplyr")
library("ggplot2")
library("lubridate")
library("testthat")

#' @Title Get the weather information sources used between specified datetimes for a specified region.
#' @param location R data frame.
#' @param fields fields number.
#' @return
#' @export
#'
#' @examples
#' 
weather_forcast <-
  function() {
    res <- VERB("GET", url = "https://api.tomorrow.io/v4/timelines?location=58.4108, 15.6214&fields=temperature&timesteps=1h&units=metric&apikey=rW9818R9IwR95rndf6JzGbWMnFkNsSTR")
    cat(content(res, 'text'))
  }
