#' Configure parameters for NREL API call
#'
#' @param status Return stations that match the given status. A single status, or a comma-separated list of multiple statuses, may be given. Options: all, E (Available), P (Planned), T (Temporarily unavailable).
#' @param access Return stations with the given access type. Options: all, public, private.
#' @param fuel_type Return stations that supply any of the given fuel types. A single fuel type, or a comma-separated list of multiple fuel types, may be given. Options: all, BD (biodiesel), CNG (compressed natural gas), ELEC (electric), E85 (ethanol/E85), HY (hydrogen), LNG (liquified natural gas), LPG, (propane).
#' @param cards_accepted Return stations that accept any of the given payment methods. A single payment method, or a comma-separated list of multiple payment methods, may be given.  Options: all, A, Debit, D, M, V, Cash, Checks, ALLIANCE, ARI, CleanEnergy, Comdata, CFN, EFS, FleetOne, FuelMan, GasCard, PacificPride, PHH, Proprietor, Speedway, SuperPass, TCH, Tchek, Trillium, Voyager, Wright_Exp.
#' @param owner_type Return stations owned by the given types of owners. A single owner type, or a comma-separated list of multiple owner types, may be given.  Options: all, FG (Federal Govt Owned), J (Joint Owned), LG (Local/Municipal Govt Owned), P (Privately Owned), SG (State/Provincial Govt Owned), T (Utility Owned).
#' @param federal_agency Return stations owned by the given federal agency. A federal agency code, or a comma-separated list of multiple federal agency codes, may be given.  Options: all, AAF, CH, CHSW, USACE_CW, CSOSA, DEF, DAF, DA, DOC, HHS, DHS, HUD, DOJ, DOL, DON, DOS, DOI, DOT, DTS, VA, EWDL, ECC, FCSD, FTC, FIN, FOCCG, GSA, GAFA, GAID, GAIT, HLTH, IRC, INA, IC, ISED, JUS, LGHC, NASA, NDEF, NREV, NRES, PARL, PQPCC, PM, PSEP, PSP, SCI, SBT, SI, SSA, TRANS, TREAS, USMC, CBP, USDA, DOD, DOE, EPA, FAA, IRS, USPS, VAFF.
#' @param cng_fill_type Return only CNG stations that provide the specified type of dispensing capability. A single type, or a comma separated list of multiple types, may be given.  Options: all, B (Fast-fill and time-fill), Q (Fast-fill), T (Time-fill).
#' @param cng_psi Return only CNG stations that provide the specified PSI pressure. A single pressure level, or a comma separated list of multiple pressure levels, may be given.  Options: all, 2400, 3000, 3600.
#' @param cng_vehicle_class Return only CNG stations that can accomodate the specified vehicle class size or greater.  Options: all, LD, MD, HD.
#' @param e85_has_blender_pump Logical. If TRUE, then return only E85 stations that also have a blender pump capable of providing mid-level ethanol blends.
#' @param ev_network Return only electric charging stations that belong to the given network. A single network, or a comma separated list of multiple networks, may be given.  Options: all, BCHYDRO, Blink Network, ChargePoint Network, Circuit électrique, eCharge Network, Electrify America, Electrify Canada, EV Connect, EVGATEWAY, eVgo Network, FLO, FCN, GE WattStation, Greenlots, Non-Networked, OpConnect, PETROCAN, POWERFLEX, SemaCharge Network, Sun Country Highway, SWTCH, Tesla Destination, Tesla, Volta, Webasto.
#' @param ev_charging_level Return only electric charging stations that provide the given level of electric vehicle supply equipment (EVSE).  Options: all, 1, 2, dc_fast, legacy.
#' @param ev_connector_type Return only electric charging stations that provide the given connector types.  Options: all, NEMA1450, NEMA515, NEMA520, J1772, J1772COMBO, CHADEMO, TESLA.
#' @param ev_connector_type_operator Control how multiple connector type options passed to the ev_connector_type parameter behave. The default of OR will return stations that have any of the connectors present. Specifying AND will only return stations that have all of the connectors present.
#' @param lng_vehicle_class Return only LNG stations that can accommodate the specified vehicle class size or greater.  Options: all, LD, MD, HD.
#' @param state Return only stations within the given state. State must be given as a two character state code (eg, "CO" for Colorado). A single state, or a comma-separate list of multiple states, may be given.
#' @param zip Return only stations within the given ZIP code. ZIP codes must be exactly 5 digits long. A single ZIP code, or a comma-separate list of multiple ZIP codes, may be given.
#' @param country Return only stations within the given country code.  Options: all, US (United States), CA (Canada).
#' @param limit The maximum number of results to return. An explicit limit of up to 200 may be passed in, or the special all string may be passed in to return all results.
#' @param location A free-form input describing the address of the location. This may include the address given in a variety of formats, such as: street, city, state, postal code, etc.
#' @param latitude Numeric. The latitude of the desired location.
#' @param longitude Numeric. The longitude of the desired location.
#' @param radius Numeric. The radius (in miles) around the search location to search for stations within. An explicit radius of up to 500.0 miles may be passed in, or the special infinite string may be passed in to find the nearest stations regardless of distance.
#'
#' @return A list of selected options for passing to an api call.
#' @export
#'
#' @examples
#' # Which electric charging stations have Tesla connectors?
#' my_params <- nrel_params(fuel_type = "ELEC", ev_connector_type = "TESLA")
nrel_params <- function(status = NULL, access = NULL, fuel_type = NULL,
                        cards_accepted = NULL, owner_type = NULL,
                        federal_agency = NULL, cng_fill_type = NULL,
                        cng_psi = NULL, cng_vehicle_class = NULL,
                        e85_has_blender_pump = NULL, ev_network = NULL,
                        ev_charging_level = NULL, ev_connector_type = NULL,
                        ev_connector_type_operator = NULL, lng_vehicle_class = NULL,
                        state = NULL, zip = NULL, country = NULL, limit = NULL,
                        location = NULL, latitude = NULL, longitude = NULL, radius = NULL) {
    params = as.list(match.call())
    params[[1]] <- NULL
    return(params)
}

#' Query the NREL Alternative Fuel API
#'
#' @param api_key Character. An authorized API key for the NREL API service. API keys can be requested at \url{https://developer.nrel.gov/signup/}
#' @param endpoint Character. Path to the specific API endpoint. Options available at \url{https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/}
#' @param params A list of parameters for the API call. See ?nrel_params for options.
#'
#' @return An object of class nrel_api, containing content, parameters, and response.
#' @export
#'
#' @examples
#' \dontrun{
#' altfuel_api(MY_API_KEY, endpoint = "/api/alt-fuel-stations/v1")
#' }
altfuel_api <- function(api_key,
                        endpoint,
                        params = list(NULL)) {
    nrel_url <- "https://developer.nrel.gov"
    params <- update_params(params, list(api_key = api_key))
    endpoint <- paste(endpoint, "json", sep = ".")
    q_url <- httr::modify_url(nrel_url,
                              path = endpoint,
                              query = params)
    ua <- httr::user_agent("https://github.com/burch-cm/altfuelr")
    res <- httr::GET(q_url, ua)

    if (httr::http_type(res) != "application/json") {
        stop("API did not return json", call. = FALSE)
    }

    parsed <- jsonlite::fromJSON(httr::content(res, "text"), simplifyVector = TRUE)

    if (httr::status_code(res) != 200) {
        stop(
            sprintf(
                "NREL API request failed [%s]\n%s\n<%s>",
                httr::status_code(res),
                parsed$message,
                parsed$documentation_url
            ),
            call. = FALSE
        )
    }

    iro <- structure(
        list(
            content = parsed,
            parameters = params,
            response = res
        ),
        class = "nrel_api"
    )
    return(iro)
}


#' Extract station data from API object
#'
#' @param x An nrel_api object.
#'
#' @return A data frame with the station listing from the nrel_api object.
#' @export
#'
#' @examples
#' \dontrun{
#' my_params <- nrel_params(fuel_type = "ELEC", ev_connector_type = "TESLA")
#' my_stations <- get_all_stations(MY_API_KEY, my_params)
#' stations(my_stations)
#' }
stations <- function(x) {
    if (class(x) != "nrel_api") {
        stop(
            sprintf(
                "Object x must be of class nrel_api, not %s",
                class(x)
            ),
            call. = FALSE
        )
    }

    if (!("content" %in% names(x))) {
        stop(
            print("Content not found; object is improperly formatted.")
        )
    }

    if (names(x$content)[1] == "alt_fuel_station") {
        # response is from request by ID endpoint
        agency <- data.frame(federal_agency_id = x$content$alt_fuel_station$federal_agency$id,
                             federal_agency_code = x$content$alt_fuel_station$federal_agency$code,
                             federal_agency_name = x$content$alt_fuel_station$federal_agency$name)
        x$content$alt_fuel_station$federal_agency <- NULL
        x.df <- cbind(purrr::map_df(x$content$alt_fuel_station, rbind), agency)
        return(x.df)
    } else {
        return(x$content$fuel_stations)
    }
}

count_results <- function(x) {
    if (class(x) != "nrel_api") {
        stop(
            sprintf(
                "Object x must be of class nrel_api, not %s",
                class(x)
            ),
            call. = FALSE
        )
    }

    if (!("station_counts" %in% names(x$content))) {
        stop(
            print("This object does not contain station counts.")
        )
    }

    n_stations <- unlist(x$content$station_counts$fuels)
    fuel_type <- stringr::str_replace_all(names(n_stations), "\\.", "_") %>%
        stringr::str_replace("ELEC_total", "ELEC_outlets") %>%
        stringr::str_remove("_stations") %>%
        stringr::str_replace("_total", "_stations")
    df <- dplyr::tibble(fuel_type, n_stations)
    return(df)
}

# ================== #
# Endpoint Functions #
# ================== #

#' Find All Alternate Fuel Stations by Criteria
#'
#' @param api_key Character. An authorized API key for the NREL API service. API keys can be requested at \url{https://developer.nrel.gov/signup/}
#' @param params A list of parameters for the API call. See ?nrel_params for options.
#'
#' @return An object of class nrel_api, containing content, parameters, and response.
#' @export
#'
#' @examples
#' \dontrun{
#' my_params <- nrel_params(fuel_type = "ELEC", ev_connector_type = "TESLA")
#' my_stations <- get_all_stations(MY_API_KEY, my_params)
#' stations(my_stations)
#' }
all_stations <- function(api_key, params = nrel_params(limit = 100)) {
    altfuel_api(api_key, endpoint = "/api/alt-fuel-stations/v1", params)
}

#' Find a Specific Alternative Fuel Station by Unique ID
#'
#' @param api_key Character. An authorized API key for the NREL API service. API keys can be requested at \url{https://developer.nrel.gov/signup/}
#' @param station_id The unique ID of the station to find.
#'
#' @return An object of class nrel_api, containing content, parameters, and response.
#' @export
#'
#' @examples
#' \dontrun{
#' my_stn <- station_by_id(MY_API_KEY, station_id = 150544)
#' stations(my_stn)
#' }
station_by_id <- function(api_key, station_id) {
    id_endpoint = paste0("/api/alt-fuel-stations/v1/", station_id)
    altfuel_api(api_key, endpoint = id_endpoint, params = nrel_params(limit = 1))
}

#' Retrieve the Date of Last API Data Update.
#'
#' @param api_key Character. An authorized API key for the NREL API service. API keys can be requested at \url{https://developer.nrel.gov/signup/}
#'
#' @return An object of class POSIXct contining the date and time of the most recent data update.
#' @export
#'
#' @examples
#' \dontrun{
#' last_updated(MY_API_KEY)
#' }
#'
last_updated <- function(api_key) {
    x <- altfuel_api(api_key, endpoint = "/api/alt-fuel-stations/v1/last-updated")
    lubridate::ymd_hms(x$content$last_updated)
}

#' Retrieve Nearest Alternate Fuel Stations by Criteria
#'
#' Location parameters can either be passed directly as arguments, or imported using the \code{nrel_params()} function to generate a list. Location passed as arguments takes precedence.
#'
#' @param api_key Character. An authorized API key for the NREL API service. API keys can be requested at \url{https://developer.nrel.gov/signup/}
#' @param location A free-form input describing the address of the location. This may include the address given in a variety of formats, such as: street, city, state, postal code, etc.
#' @param latitude Numeric. The latitude of the desired location.
#' @param longitude Numeric. The longitude of the desired location.
#' @param radius Numeric. The radius (in miles) around the search location to search for stations within. An explicit radius of up to 500.0 miles may be passed in, or the special infinite string may be passed in to find the nearest stations regardless of distance. Defaults to 'infinite'.
#' @param params A list of parameters for the API call. See ?nrel_params for options.
#'
#' @return An object of class nrel_api, containing content, parameters, and response.
#' @export
#'
#' @examples
#' \dontrun{
#' # find the 5 nearest Tesla stations to FAA HQ in Washington DC
#' my_params <- nrel_params(fuel_type = "ELEC", ev_connector_type = "TESLA", limit = 5)
#' my_loc <- c("FAA Headquarters, Washington, DC")
#' tesla_stns <- nearest_stations(MY_API_KEY, location = my_loc, params = my_params)
#' stations(tesla_stns)
#' }
nearest_stations <- function(api_key, location = NULL, latitude = NULL, longitude = NULL,
                             radius = NULL, params = nrel_params(radius = 'infinite')) {
    .params <- update_params(params, list(location = location,
                                          latitude = latitude,
                                          longitude = longitude,
                                          radius = radius))
    altfuel_api(api_key, endpoint = "/api/alt-fuel-stations/v1/nearest", params = .params)
}

