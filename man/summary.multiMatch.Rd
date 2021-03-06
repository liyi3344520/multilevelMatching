% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3methods.R
\name{summary.multiMatch}
\alias{summary.multiMatch}
\title{Prints a summary of a multiMatch object}
\usage{
\method{summary}{multiMatch}(object, ...)
}
\arguments{
\item{object}{object of class "multiMatch"}

\item{...}{dots}
}
\description{
Prints a summary of a multiMatch object
}
\examples{

  sim_data <- multilevelMatching::simulated_data
  Y <- sim_data$outcome
  W <- sim_data$treatment
  X <- as.matrix(sim_data[ ,-(1:2)])
  names(Y) <- paste0("ID", 1:length(Y))

  trimming <- FALSE
  method <- c("covariates", "polr", "multinom")[2]

  fit <- multiMatch(Y,W,X,trimming=trimming,match_on=method)
  summary(fit)

}
\author{
Brian G. Barkley
}
