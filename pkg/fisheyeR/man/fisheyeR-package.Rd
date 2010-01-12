\name{fisheyeR-package}
\alias{fisheyeR-package}
\alias{fisheyeR}
\docType{package}
\title{
Fisheye and Hyperbolic-space-alike Interactive Visualization Tools in R
}
\description{
fisheyeR provides tools for creating Interactive Data Visualizations. 
}
\details{
\tabular{ll}{
Package: \tab fisheyeR\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2009-10-29\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
Depends: \tab methods\cr
}



   \pkg{fisheyeR} provides tools for creating Interactive Data Visualizations in R by implementing ideas from Furnas(1986), Munzner(2006), Costa and Venturini (2006). 
   
   A Fisheye effect allows you to selectively scale information such that readability is preserved for the part relevant to the user, while the rest remains available in a reduced form to serve as context.

   Displaying information in a hyperbolic space commonly utilizes the Poincare disk model of hyperbolic geometry, though the Klein-Beltrami model can also be used. Both display the entire hyperbolic plane within a unit disk, making the entire set visible at once. The unit disk gives a fish-eye lens view of the plane, giving more emphasis to elements which are in focus and displaying elements further out of focus closer to the boundary of the disk. 

   Venturini and Costa Points Of Interest (POI) allows for the exploration of multidimensional data, by representing information according to its similarity with every POI defined for the set.
   
   See references for details.

}

\author{
Eduardo San Miguel Martin

Maintainer: Eduardo San Miguel Martin \email{eduardo.san.miguel.martin@gmail.com}
}

\references{
\cite{
   Da Costa, David & Venturini, Gilles (2006). An Interactive Visualization Environment for Data Exploration Using Points of Interest. adma 2006: 416-423} \cr

\cite{
   Furnas, George (1986). Generalized Fisheye Views. Human Factors in computing systems, CHI '86 conference proceedings, ACM, New York, pp. 16-23. } \cr

\cite{
   Heidi Lam, Ronald A. Rensink, and Tamara Munzner (2006). Effects of 2D Geometric Transformations on Visual Memory. Proc. Applied Perception in Graphics and Visualization (APGV 2006), 119-126, 2006. } \cr

\cite{
   Keith Lau, Ron Rensink, and Tamara Munzner (2004). Perceptual Invariance of Nonlinear Focus+Context Transformations. Proc. First Symposium on Applied Perception in Graphics and Visualization (APGV 04) 2004, pp 65-72.} \cr

\cite{
   Lamping, J., Rao, R., Pirolli, P. (1995) A Focus+Context Technique Based on Hyperbolic Geometry for Visualizing Large Hierarchies. Proc. ACM Conf. Human Factors in Computing Systems, CHI. ACM. pp, 401-408 } \cr
}


\seealso{\code{\link{POIPlot-methods}},\code{\link{POI-class}},\code{\link{plotPOI}}}

