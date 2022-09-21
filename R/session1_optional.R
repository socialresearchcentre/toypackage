#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

paste_date <- function(x) {
  paste0(x, Sys.Date())
}

#' @export
write_dated_csv <- function(x, y) {
  fn <- paste0(paste_date(y), '.csv')
  write.csv(x, fn)
}
