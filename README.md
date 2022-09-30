# weather.forecasting

<!-- badges: start -->
  [![R-CMD-check](https://github.com/Monmo538/weather.forecasting/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Monmo538/weather.forecasting/actions/workflows/R-CMD-check.yaml)
  <!-- badges: end -->



## About the Package
This package connect to a https://tomorrow.io API to collect the last 7 days to next 15 days of the temperature of given cities. It should be noted that the temperature could be in Celsius and Fahrenheit.


### Setup of Package 
```{r setup}
library(weather.forecasting)
```

This function gives 3 arguments, "location", "weatherUnit" and "your api key", connect with given API and return the temperature of the selected city based on the selected unit. The coordinatin includes Longtitude and Latiutude of each city.
It will return the data frame for the wather for given city.
```{r}
data <- weather_forcast("58.4108,15.6214", "metric", "Your-API-Key")
```


