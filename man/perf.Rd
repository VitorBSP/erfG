% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/perf.R
\name{perf}
\alias{perf}
\title{perf}
\usage{
perf(x, dist, ...)
}
\arguments{
\item{x}{Value to calculate the density.}

\item{dist}{Distribution that you want to use.}

\item{...}{Specific arguments of your model.}
}
\description{
This function applies erf to density of the model that you choose.
}
\examples{
perf(2, dist = "exp", alpha = 3)


perf(2, dist = "norm")
}
