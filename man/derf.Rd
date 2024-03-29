% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/derf.R
\name{derf}
\alias{derf}
\title{derf}
\usage{
derf(x, dist, ...)
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
derf(2, dist = "egep", xi = 3, a = 3, b = 3)


derf(2, dist = "betagp", xi = 3, sigma = 1, beta1 = 3, alpha = 2)

}
