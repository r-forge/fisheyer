\name{fishIin}
\alias{fishIin}
\alias{fishIout}
\title{ Nonlinear Focus+Context Transformations }
\description{
  Functions to apply nonlinear Focus+Context transformations
}
\usage{
fishIin(x, value)
fishIout(x, value)
}
\arguments{
  \item{x}{ A number }
  \item{value}{ nonlinear factor to apply }
}
\details{
Geometric transformations are widely used in interface design, particularly in visualization systems where the amount of information to display exceeds available screen resolution, and in situations that require navigation through a two- or threedimensional scene.

Likewise, scaling is extremely popular; for example, thumbnails are widely used as icons. Unfortunately, scaling only works to a certain extent: When the size of an image is reduced too far, its details become indiscernible.

One possible remedy is to selectively scale it such that readability is preserved for the part of the image relevant to the user, while the rest remains available in a reduced form to serve as context.

The class of Focus+Context techniques does so by providing both an unscaled focus and a scaled-down context in a single integrated image. Focus+Context can be realized using a nonlinear transformation called a fisheye transformation, which has two main variants: rectangular and polar. See references.
}
\value{
   Number transformed by the factor applied.
}
\references{ 

\cite{Heidi Lam, Ronald A. Rensink, and Tamara Munzner (2006). Effects of 2D Geometric Transformations on Visual Memory. Proc. Applied Perception in Graphics and Visualization (APGV 2006), 119-126, 2006.} 

\cite{Keith Lau, Ron Rensink, and Tamara Munzner (2004). Perceptual Invariance of Nonlinear Focus+Context Transformations. Proc. First Symposium on Applied Perception in Graphics and Visualization (APGV 04) 2004, pp 65-72.}

 }

\author{ 
  Eduardo San Miguel Martin \cr
} 

\seealso{\code{\link{POIPlot-methods}}, \code{\link{plotPOI}}}

\examples{
   sapply(seq(0,1,.1), fishIin, 3)
   sapply((sapply(seq(0,1,.1), fishIin, 3)), fishIout, 3)
}
