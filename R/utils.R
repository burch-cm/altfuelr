
#' Update Non-Null Parameters
#'
#' @param params list of parameters
#' @param updates list of new parameters
#'
#' @return an updated list of parameters
#'
#' @export
#' @examples
#' my_params <- list(name = "Matt Foley")
#' my_updates <- list(name = NULL, location = "a VAN down by the RIVER")
#' new_params <- update_params(params = my_params, updates = my_updates)
update_params <- function(params, updates) {
    new_params_nn <- Filter(Negate(is.null), updates)
    purrr::list_modify(params, !!!new_params_nn)
}
