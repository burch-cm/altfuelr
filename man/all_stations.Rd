% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/altfuel_api.R
\name{all_stations}
\alias{all_stations}
\title{Find All Alternate Fuel Stations by Criteria}
\usage{
all_stations(api_key, params = nrel_params(limit = "all"))
}
\arguments{
\item{api_key}{Character. An authorized API key for the NREL API service. API keys can be requested at \url{https://developer.nrel.gov/signup/}}

\item{params}{A list of parameters for the API call. See ?nrel_params for options.}
}
\value{
An object of class nrel_api, containing content, parameters, and response.
}
\description{
Find All Alternate Fuel Stations by Criteria
}
\examples{
\dontrun{
my_params <- nrel_params(fuel_type = "ELEC", ev_connector_type = "TESLA")
my_stations <- get_all_stations(MY_API_KEY, my_params)
stations(my_stations)
}
}
