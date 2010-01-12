\name{toHiperbolico}
\alias{toHiperbolico}

\title{ Hyperbolic-alike space effect }
\description{
  This function combined with fisheye effect is used to simulate the hyperbolic space effect.
}
\usage{
toHiperbolico(objeto, M = 1, cx = 0, cy = 0, r = 1)
}

\arguments{
  \item{objeto}{ A matrix with object coordinates }
  \item{M}{ fisheye effect factor }
  \item{cx}{ X coordinate for circle center. }
  \item{cy}{ Y coordinate for circle center. }
  \item{r}{ Radius }
}
\details{
  Displaying information in a hyperbolic space commonly utilizes the Poincare disk model of hyperbolic geometry, though the Klein-Beltrami model can also be used. Both display the entire hyperbolic plane within a unit disk, making the entire set visible at once. The unit disk gives a fish-eye lens view of the plane, giving more emphasis to elements which are in focus and displaying elements further out of focus closer to the boundary of the disk. 
  See references for details.
}
\value{

  \item{objetoC }{Matrix with new object coordinates. Cartesian system }
  \item{objetoP }{Matrix with new object coordinates. Polar system}

}
\references{ 

\cite{Heidi Lam, Ronald A. Rensink, and Tamara Munzner (2006). Effects of 2D Geometric Transformations on Visual Memory. Proc. Applied Perception in Graphics and Visualization (APGV 2006), 119-126, 2006.} 

\cite{Keith Lau, Ron Rensink, and Tamara Munzner (2004). Perceptual Invariance of Nonlinear Focus+Context Transformations. Proc. First Symposium on Applied Perception in Graphics and Visualization (APGV 04) 2004, pp 65-72.}

 }

\author{ 
  Eduardo San Miguel Martin 
} 

\seealso{\code{\link{plotPOI}}, \code{\link{POIPlot}}, \code{\link{fishIin}},\code{\link{fishIout}},}

\examples{
   circle1 = circulo(0,0,.25, PLOT = FALSE)
   circle2 = circulo(0,0,1.25, PLOT = FALSE)
   plot(0,0, xlim = c(-1.25,1.25), ylim= c(-1.25,1.25), col = 'white')
   points(circle1, col = 'blue', cex = 0.5)
   points(circle2, col = 'blue', cex = 0.5)
   points(toHiperbolico(circle2,3)$objetoC, col = 'green', cex = 0.5)
   points(toHiperbolico(circle1,3)$objetoC, col = 'green', cex = 0.5)
}
