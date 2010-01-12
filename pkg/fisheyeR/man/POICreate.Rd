\name{POICreate}
\alias{POICreate}
\title{ Create an POI }
\description{
  Function to create an object of class POI, POIGraph, multiPOI, mPOIAnd or mPOIOr
}
\usage{
POICreate(type = "POI", ...)
}
\arguments{
  \item{type}{ Type of object to create:  POI, POIGraph, multiPOI, mPOIAnd or mPOIOr}
  \item{\dots}{ Further arguments to create objetc. Slots values of each class. }
}

\value{
   A new object of selected class.
}

\seealso{\code{\link{POI-class}}}
