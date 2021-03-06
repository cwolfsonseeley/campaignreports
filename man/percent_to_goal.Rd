% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/percent_to_goal.R
\name{percent_to_goal}
\alias{percent_to_goal}
\title{percent_to_goal}
\usage{
percent_to_goal(goal, unit, from, to)
}
\arguments{
\item{goal}{The unit's monetary goal}

\item{unit}{Unit code}

\item{from}{Start date, in yyyymmdd format}

\item{to}{End date, in yyyymmdd format}
}
\description{
The function outputs the percentage of a unit's goal they have reached
in a given timeframe.
}
\examples{
percent_to_goal(goal = 100000000, unit = 'EN', from = 20140101, to = 20180630)
}
