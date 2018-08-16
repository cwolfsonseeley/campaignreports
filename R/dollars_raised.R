#' dollars_raised
#'
#' The function outputs the total dollars raised and number of gifts secured by a unit
#' in a given timeframe. The data is pulled from proposals with an assignment to the
#' identified unit.
#' @param unit Unit code
#' @param from Start date, in yyyymmdd format
#' @param to End date, in yyyymmdd format
#' @export
#' @examples
#' dollars_raised(unit = 'EN', from = 20140101, to = 20180630)


dollars_raised <- function(unit, from, to) {
  if (!assertthat::is.count(from))
    stop(from, " is not a valid date")
  if (!assertthat::is.count(to))
    stop(to, " is not a valid date")

  dollars_raised_query <- getcdw::parameterize_template("sql/dollars_raised.sql")
  getcdw::get_cdw(dollars_raised_query(unit = unit, from = from, to = to))

}

