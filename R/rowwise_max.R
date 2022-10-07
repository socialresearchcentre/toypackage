#' rowwise_max
#'
#' @param dat A dataframe
#'
#' @export

rowwise_max <- function(dat){

  dat <- convert_NA_to_0(dat)

  if(any(vapply(dat, function(.x) !is.numeric(.x), logical(1)))) stop('Not all variables are numeric!')

  vapply(1:nrow(dat), function(.x) max(dat[.x,]), numeric(1))

}

#' rowwise_max_dplyr
#'
#' @param dat A dataframe
#'
#' @export
#' @importFrom magrittr %>%
#' @import dplyr

rowwise_max_dplyr <- function(dat){

  dat <- convert_NA_to_0(dat)

  if(any(vapply(dat, function(.x) !is.numeric(.x), logical(1)))) stop('Not all variables are numeric!')

  dat %>%
    dplyr::rowwise() %>%
    dplyr::mutate(
      max = max(dplyr::c_across(dplyr::everything()))
    ) %>%
    dplyr::pull(max)

}
