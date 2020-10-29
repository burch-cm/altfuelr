#' Alternate Fuel Stations in the US.
#'
#' A dataset containing the alternate fuel stations in the United States and Canada
#' tracked by the US DOE Alternate Fuels Data Center
#'
#' @format A data frame with 40279 observations of 64 variables:
#' \describe{
#'   \item{Fuel_Type_Code}{The coded fuel type available: BD = BioDiesel, CNG = Compressed Natural Gas, ELEC = electric, E88 = Ethanol (E85), HY = Hydrogen, LNG = Liquified Natural Gas, LPG = Propane.}
#'   \item{Station_Name}{The name of the fuel station.}
#'   \item{Street_Address}{The physical street address of the station.}
#'   \item{Intersection_Directions}{Brief additional information about how to locate the station.}
#'   \item{City}{The name of the city in which the station is located.}
#'   \item{State}{The two character code for the U.S. state or Canadian province/territory of the station's location.}
#'   \item{ZIP}{The postal code for the station.}
#'   \item{Plus4}{The plus-4 portion of the station's ZIP code (U.S. ZIP codes only).}
#'   \item{Station_Phone}{The telephone number of the fuel station}
#'   \item{Status_Code}{The current status of the station, given as code values: E = Available, P = Planned, T = Temporarily Unavailable}
#'   \item{Expected_Date}{For planned stations, the date the station is expected to open or start carrying alternative fuel. For temporarily unavailable stations, the expected date is the date the station is expected to reopen. This date is estimated but not guaranteed.}
#'   \item{Access_Code}{A description of who is allowed to access the station, given as 'Public' or 'Private'.}
#'   \item{Access_Detail_Code}{A description of other station access information, given as code values: CALL = call ahead, KEY_AFTER_HOURS = card key after hours, KEY_ALWAYS = card key at all times, CREDIT_CARD_AFTER_HOURS = credit card after hours, CREDIT_CARD_ALWAYS = credit card at all times}
#'   \item{Access_Days_Time}{Hours of operation for the station.}
#'   \item{Cards_Accepted}{A space-separated list of payment methods accepted. Payment methods are given as code values: A = American Express, Debit = Debit, D = Discover, M = Mastercard, V = Visa, Cash = Cash, Checks = Check, ALLIANCE = Alliance AutoGas, ARI = ARI, CleanEnergy = Clean Energy, Comdata = Commercial Fueling Network, EFS = EFS, FleetOne = FleetOne, FuelMan = Fuelman, GasCard = GASCARD, PacificPride = Pacific Pride, PHH = PHH, Proprietor = Proprietor Fleet Card, Speedway = Speedway, SuperPass = SuperPass, TCH = TCH, Tchek = T-Chek T-Card, Trillium = Trillium, Voyager = Voyager, Wright_Exp = WEX}
#'   \item{Owner_Type_Code}{The type of organization that owns the fueling infrastructure. Owner types are given as code values: FG = Federal Government Owned, J = Jointly Owned, LG = Local/Municipal Government Owned, P = Privately Owned, SG = State/Provincial Government Owned, T = Utility Owned}
#'   \item{BD_Blends}{For biodiesel stations, the level of biodiesel blends the station provides.}
#'   \item{EV_Level1_EVSE_Num}{For electric stations, the number of Level 1 EVSE (standard 110V outlet).}
#'   \item{EV_Level2_EVSE_Num}{For electric stations, the number of Level 2 EVSE (J1772 connector).}
#'   \item{EV_DC_Fast_Count}{For electric stations, the number of DC Fast Chargers.}
#'   \item{EV_Other_Info}{For electric stations, the number and type of additional EVSE.}
#'   \item{EV_Network}{For electric stations, the name of the EVSE network, if applicable.}
#'   \item{EV_Network_Web}{For electric stations, the EVSE network Web site, if applicable.}
#'   \item{Geocode_Status}{A rating indicating the approximate accuracy of the latitude and longitude for the station's address, given as code values: GPS = GPS, 200-9 = Point, 200-8 = Address, 200-7 =  Intersection, 200-6 = Street, 200-5 = Neighborhood, 200-5 = Postal Code - Extended, 200-5 = Postal Code, 200-4 = City/Town, 200-3 = County, 200-2 = State/Province, 200-1 = Country, 200-0 = Unknown}
#'   \item{Latitude}{The latitude of the station's address.}
#'   \item{Longitude}{The longitude of the station's address.}
#'   \item{Date_Last_Confirmed}{The date the station's details were last confirmed.}
#'   \item{ID}{A unique identifier for this specific station.}
#'   \item{Updated_At}{The time the station's details were last updated (ISO 8601 format).}
#'   \item{Federal_Agency_ID}{A unique identifier for the federal agency.}
#'   \item{Federal_Agency_Name}{The name of the federal agency.}
#'   \item{Open_Date}{The date that the station began offering the fuel. Please note that most LPG (propane) stations do not have open dates. Some open dates are approximate. Also note that electric station records that are imported to the Station Locator on a daily basis through a network API do not have open dates.}
#'   \item{Hydrogen_Status_Link}{For hydrogen stations, a link to a website that provides up-to-date information about the current status of this hydrogen station.}
#'   \item{LPG_Primary}{For propane stations, the type of station, given as a boolean.}
#'   \item{E85_Blender_Pump}{For E85 stations, an indication of whether the station has a blender pump on site, given as a boolean.}
#'   \item{EV_Connector_Types}{For electric stations, an array of strings identifying the connector types available at this station.}
#'   \item{Country}{The two character country code of the station's location.}
#'   \item{Hydrogen_Is_Retail}{For hydrogen stations, whether a station offers the retail sale of hydrogen by accepting payment at the point of sale.}
#'   \item{Federal_Agency_Code}{The abbreviation for the Federal Agency, if relevant.}
#'   \item{Facility_Type}{The type of facility at which the station is located.}
#'   \item{CNG_Dispenser_Num}{For CNG stations, the number of CNG dispensers installed.}
#'   \item{CNG_On-Site_Renewable_Source}{For CNG stations, the type of renewable energy used to generate CNG on-site.}
#'   \item{CNG_Total_Compression_Capacity}{For CNG stations, the total compressor capacity per compressor, measured in standard cubic feet per minute (scfm)}
#'   \item{CNG_Storage_Capacity}{For CNG stations, the total storage capacity, measured in standard cubic feet (scf).}
#'   \item{LNG_On-Site_Renewable_Source}{For LNG stations, the type of renewable energy used to generate LNG on-site.}
#'   \item{E85_Other_Ethanol_Blends}{For E85 stations, an array of strings identifying the range(s) of blends other than E85 available at the station.}
#'   \item{EV_Pricing}{For EVSE stations, information about whether and how much users must pay to use the EVSE.}
#'   \item{LPG_Nozzle_Types}{For LPG stations, an array of strings, identifying the type of nozzles available at the station, given as code values: ACME = ACME, QUICK_CONNECT = Quick-connect.}
#'   \item{Hydrogen_Pressures}{For hydrogen stations, any array of strings identifying the pressures of the hydrogen available (in bar).}
#'   \item{Hydrogen_Standards}{For hydrogen stations, any array of strings identifying which SAE International fueling protocol standard(s) the infrastructure meets.}
#'   \item{CNG_Fill_Type_Code}{For CNG stations, the type of dispensing capability available, given as code values: B = Fast-fill and time-fill, Q = Fast-fill, T = Time-fill.}
#'   \item{CNG_PSI}{For CNG stations, a space separated list of PSI pressures available.}
#'   \item{CNG_Vehicle_Class}{For CNG stations, the maximum vehicle size that can physically access the fueling infrastructure, given as code values: LD = Passenger vehicles (class 1-2), MD = Medium-duty (class 3-5), HD = Heavy-duty (class 6-8)}
#'   \item{LNG_Vehicle_Class}{For LNG stations, the maximum vehicle size that can physically access the fueling infrastructure, given as code values: LD = Passenger vehicles (class 1-2), MD = Medium-duty (class 3-5), HD = Heavy-duty (class 6-8)}
#'   \item{EV_On-Site_Renewable_Source}{For EVSE stations, the type of renewable energy used to generate electricity on-site.}
#'
#' }
#' @source \url{https://afdc.energy.gov/data_download/alt_fuel_stations_format}
"altfuel"
