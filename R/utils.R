#' @keywords internal

convert_NA_to_0 <- function(dat){
  dat[is.na(dat)] <- 0
  dat
}
