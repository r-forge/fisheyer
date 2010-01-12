\name{puntosMedios}
\alias{puntosMedios}
\title{ Connect 2D coordinates points }
\description{
  puntosMedios connects points in 2D coordinates. A function taking 2D coordinates given and joining the corresponding points. 
}
\usage{
puntosMedios(Pcoords, detalle = 5)
}
\arguments{
  \item{Pcoords}{ matrix object with coordinates }
  \item{detalle}{ Detail }
}
\details{
  See example below
}
\value{
  An object of class matrix with coordinates of the connectors.
}

\seealso{\code{\link{plotPOI}}, \code{\link{lines}}}

\examples{
   obj <- matrix(c(.5,0,0,.5, -.5,0, 0,-.5), ncol = 2, byrow = TRUE)
   plot(0, 0, col = 'white')
   points(puntosMedios(obj), col = 'yellow', type = 'l')
   points(obj, col = 'blue')   
}
