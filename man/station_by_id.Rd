% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/altfuel_api.R
\name{station_by_id}
\alias{station_by_id}
\title{Find a Specific Alternative Fuel Station by Unique ID}
\usage{
station_by_id(api_key, station_id)
}
\arguments{
\item{api_key}{Character. An authorized API key for the NREL API service. API keys can be requested at \url{https://developer.nrel.gov/signup/}}

\item{station_id}{The unique ID of the station to find.}
}
\value{
An object of class nrel_api, containing content, parameters, and response.
}
\description{
Find a Specific Alternative Fuel Station by Unique ID
}
\examples{
\dontrun{
my_stn <- station_by_id(MY_API_KEY, station_id = 150544)
stations(my_stn)
}
}
