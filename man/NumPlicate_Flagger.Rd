% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/echo_cleaning_functions.R
\name{NumPlicate_Flagger}
\alias{NumPlicate_Flagger}
\title{NumPlicate Flagger}
\usage{
NumPlicate_Flagger(
  data,
  base_variables = c("PatientID", "StudyDate", "StudyNotes", "InterpreterID"),
  variables = "all"
)
}
\arguments{
\item{data}{The dataframe to perform the function on (make sure desired
filters are applied) and that variables you want to check are numeric
variables}

\item{base_variables}{The variables that identify which row each outlier
value comes from.}

\item{variables}{These are the variables to find outlier values based on
precision of measurements. If "all" is provided, the function will attempt
to get all variables that are not base_variables.}
}
\value{
A nested dataframe
}
\description{
A function that looks at the multiple measurements for each
  variable (var_1, var_2,...) and calculates the coefficient of variation
  (CV) from between the measurements. It then looks at the CV distribution of
  CV's for all rows for those variables. Outliers will be measurements that
  vary too much based on Z-score.
}
\details{
This should return a nested dataframe with a column of dataframes of
  outlier values for each variable
}
