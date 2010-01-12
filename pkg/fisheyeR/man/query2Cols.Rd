\name{query2Cols}
\alias{query2Cols}

\title{ Create color vector for elements in an object of class POI }
\description{
  \code{query2Cols} assigns a color to every element in the POI, accordingly with its cos.query.docs value.
  Valid palettes: 'heat', 'topo', 'cm' and 'terrain'. 
  
  Note that cos.query.docs value must be in the range [0-1]. 
}
\usage{
query2Cols(object, value)
}
\arguments{
  \item{object}{ object of class POI }
  \item{value}{ Palette to apply. One in: 'heat','topo','cm','terrain' }
}

\value{
A vector with corresponding color to each element of POI.

}
\author{ 
  Eduardo San Miguel Martin 
} 
\seealso{\code{\link{POIPlot-methods}},\code{\link{POI-class}},\code{\link{plotPOI}}}    
\examples{
   data(USArrests)
   usaPOI = POICreate('POI')
   usaPOI@cos.query.docs <-  USArrests[,3] / max(USArrests[,3])  # urban population (1 high - 0 low)
   usaPOI@colores <- query2Cols(usaPOI, 'terrain')
   plot(usaPOI@cos.query.docs, col = usaPOI@colores)
   
   usaPOI@colores <- query2Cols(usaPOI, 'heat')
   plot(usaPOI@cos.query.docs, col = usaPOI@colores)
}

