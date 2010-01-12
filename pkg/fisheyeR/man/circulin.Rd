\name{circulin}
\alias{circulin}
\title{ Coordinates to plot a circle }
\description{
  For interactive use via middlebutton click. 
}
\usage{
circulin(cx, cy, r = 0.045, objeto, col = "blue", PLOT = TRUE, label = 0)
}
\arguments{
  \item{cx}{ x coordinate for circle center }
  \item{cy}{ y coordinate for circle center }
  \item{r}{ Radius }
  \item{objeto}{ Matrix with points plotted }
  \item{col}{ Circle color to be plotted }
  \item{PLOT}{ Should circle be plotted? }
  \item{label}{ Apply labels to plot? }
}
\details{
  Not to be called directly by user. 
}
\value{
  A matrix containing circle coordinates to be plotted. A vector (called insiders) containing elements selected is created in POI.env enviroment.
}

\author{ 
  Eduardo San Miguel Martin 
} 

\seealso{\code{\link{circulo}}, \code{\link{POIPlot-methods}}}
