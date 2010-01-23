\name{POICalc}
\alias{POICalc}
\title{ Function to generate coordinates points to plot using POIs }
\description{
   \code{POICalc} Points Of Interest (POI) allows for the exploration of multidimensional data, by representing information according to its similarity with every POI defined for the set.
}
\usage{
POICalc(objeto, NC, cx = 0, cy = 0, r = 1, ...)
}
\arguments{
  \item{objeto}{ Object of class POI }
  \item{NC}{ Number of POI (points of interest as proposed by Costa and Venturini. See references. }
  \item{cx}{ x coordinates }
  \item{cy}{ x coordinates }
  \item{r}{ Plot Radius }
  \item{\dots}{ further arguments }
}
\details{
    POIs are located on a circle, and data are displayed within this circle according to their similarities to these POI. Interactive actions are possible: selection, zoom, dynamical change of POI. 
}
\value{
  \item{Pcoords }{Matrix with POIs coordinates}
  \item{PcoordsFI }{Matrix with POIs coordinates with fisheye effect applied.}
  \item{newPcoords }{Matrix with coordinates for the lines joining POIs}
  \item{objeto }{Matrix with coordinates for elements in the main set.}
}

\author{
Eduardo San Miguel Martin
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

\examples{
\dontrun{
   ## IRIS Example
   data(iris)
   
   # distance of each element to each dimension max and min
   matrizSim = cbind(
               1 - (max(iris[,1]) - iris[,1]) / (max(max(iris[,1]) - iris[,1])),
               1 - (max(iris[,2]) - iris[,2]) / (max(max(iris[,2]) - iris[,2])),
               1 - (max(iris[,3]) - iris[,3]) / (max(max(iris[,3]) - iris[,3])),
               1 - (max(iris[,4]) - iris[,4]) / (max(max(iris[,4]) - iris[,4])),

               1 - (min(iris[,1]) - iris[,1]) / (min(min(iris[,1]) - iris[,1])),
               1 - (min(iris[,2]) - iris[,2]) / (min(min(iris[,2]) - iris[,2])),
               1 - (min(iris[,3]) - iris[,3]) / (min(min(iris[,3]) - iris[,3])),
               1 - (min(iris[,4]) - iris[,4]) / (min(min(iris[,4]) - iris[,4])))

   # exaggerate diffs
   matrizSim  = matrizSim^3 
   
   # Create POI plot
   irisPOI = POICreate('POI')
   irisPOI@matrizSim <- matrizSim
   irisPOI@wordsInQuery <- c('high.Sepal.Length', 'high.Sepal.Width', 'high.Petal.Length', 'high.Petal.Width',
                             'low.Sepal.Length', 'low.Sepal.Width', 'low.Petal.Length', 'low.Petal.Width')
   POIcoords(irisPOI) <- POICalc(irisPOI ,length(irisPOI@wordsInQuery))
   irisPOI@docs <- cbind(matrix(seq(1:nrow(irisPOI@objeto))),matrix(seq(1:nrow(irisPOI@objeto))))
   irisPOI@colores <- c(rep(2,50),rep(3,50),rep(4,50))
   try(rm('POI.env'), silent = T)
   plotPOI(irisPOI)
}
}