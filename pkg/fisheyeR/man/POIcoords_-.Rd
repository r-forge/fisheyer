\name{POIcoords<-}
\alias{POIcoords<-}

\title{ Update POI slots }
\description{
  This function allows POI to update its Pcoords, PcoordsFI, newPcoords and objeto Slots.
}
\usage{
POIcoords(object) <- value
}
\arguments{
  \item{object}{ Object of class POI }
  \item{value}{ object of class list with values to use for updating }
}
\details{
  Usually \code{POICalc} returned value will be used as 'value' argument for POIcoords.
}
\value{
    Original POI object with slots updated.
}
\seealso{\code{\link{POIPlot-methods}},\code{\link{POI-class}},\code{\link{plotPOI}}}

\examples{
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