% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cohorts.R
\name{convertUnwantedLCC}
\alias{convertUnwantedLCC}
\title{Convert Land Cover Classes to another value in is neighbourhood}
\usage{
convertUnwantedLCC(pixelClassesToReplace = 34:36, rstLCC,
  ecoregionGroupVec, speciesEcoregion, availableERC_by_Sp)
}
\arguments{
\item{pixelClassesToReplace}{Integer vector of classes that are are to be replaced, e.g.,
34, 35, 36 on LCC2005, which are burned young, burned 10yr, and cities}

\item{rstLCC}{LCC raster, e.g., LCC2005}

\item{ecoregionGroupVec}{The vector of ecoregionGroup codes}

\item{speciesEcoregion}{TODO: description needed}

\item{availableERC_by_Sp}{TODO: description needed}
}
\description{
This will search around the pixels on \code{rstLCC} that have
\code{pixelClassesToReplace}, and search in iteratively increasing
radii outwards for other Land Cover Classes than \code{pixelClassesToReplace}.
It will then take the cohorts that were in pixels with \code{pixelClassesToReplace}
and assign them new values in the output object. This function will
also check that it must be an \code{ecoregionCode} that already exists in
\code{cohortData}, i.e., not create new \code{ecoregionCode} values.
}
\author{
Eliot McIntire
}
