\name{POIPlot}
\alias{POIPlot}
\title{ Plot Objects of Class POI }
\description{
  Function for plotting objects of class \code{POI}.
}
\usage{
   POIPlot(POI)
}

\arguments{
  \item{POI}{ An object of class POI }
}
\details{
  See POI class reference for details on POIs
}
\value{
   A plot (non interactive) of the object.
}
\seealso{\code{\link{POI-class}},\code{\link{plotPOI}}}
\examples{
   ## rgb colors 
   rgbPOI = POICreate(type = 'POI', wordsInQuery = c('red','green','blue'),
                       colores = colors(), itemsCol = colors(),
                       docs = cbind(colors(), 1:length(colors())),
                       cos.query.docs = rep(1,length(colors())),
                       matrizSim = t(col2rgb(colors())) / max(t(col2rgb(colors())))
   )
   POIcoords(rgbPOI) <- POICalc(rgbPOI ,length(rgbPOI@wordsInQuery))
   rgbPOI@itemsFamily <- '' # R cmd check passing in examples
   try(rm('POI.env'), silent = T)
   POIPlot(rgbPOI)
}
