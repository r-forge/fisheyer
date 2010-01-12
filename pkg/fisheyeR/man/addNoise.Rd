\name{addNoise}
\alias{addNoise}
\title{ Add noise to a matrix }
\description{
  Add noise to duplicated rows in a matrix. 
}
\usage{
addNoise(m, tamanyo = 0.01)
}
\arguments{
  \item{m}{ Matrix to add noise to. }
  \item{tamanyo}{ Size of noise added. }
}
\details{
  addNoise goal is to avoid any row duplicate in a matrix by adding a small (normal) noise to it.
}
\value{
   Original matrix with no duplicates.
}
\author{ 
  Eduardo San Miguel Martin 
} 

\seealso{\code{\link{fishIin}}, \code{\link{fishIout}}, \code{\link{POIPlot-methods}}}

\examples{
   addNoise(matrix(rep(1,100), ncol = 2))
}

