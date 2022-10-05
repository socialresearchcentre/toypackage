
#' Title
#'
#' @param dat
#'
#' @return
#' @export
#'
rowwise_max <- function(dat){

  dat <- convert_NA_to_0(dat)

  if(any(vapply(dat, function(.x) !is.numeric(.x), logical(1)))) stop('Not all variables are numeric!')

  vapply(1:nrow(dat), function(.x) max(dat[.x,]), numeric(1))

}
