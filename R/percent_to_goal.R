#' percent_to_goal
#'
#' The function outputs the percentage of a unit's goal they have reached
#' in a given timeframe.
#' @param goal The unit's monetary goal
#' @param unit Unit code
#' @param from Start date, in yyyymmdd format
#' @param to End date, in yyyymmdd format
#' @export
#' @examples
#' percent_to_goal(goal = 100000000, unit = 'EN', from = 20140101, to = 20180630)


percent_to_goal <- function(goal, unit, from, to) {
  if (!assertthat::is.count(from))
    stop(from, " is not a valid date")
  if (!assertthat::is.count(to))
    stop(to, " is not a valid date")

  raised = dollars_raised(unit = unit, from = from, to = to)
  scales::percent(as.numeric(raised[1,1]/100000000))

}
