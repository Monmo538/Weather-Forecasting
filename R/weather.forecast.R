library(httr)

weather_forcast <-
  function() {
    res <- VERB("GET", url = "https://api.tomorrow.io/v4/timelines?location=58.4108, 15.6214&fields=temperature&timesteps=1h&units=metric&apikey=rW9818R9IwR95rndf6JzGbWMnFkNsSTR")
    cat(content(res, 'text'))
  }
