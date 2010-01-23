\name{plotPOI}
\alias{plotPOI}
\alias{plotPOIGraph}
\title{ Functions for POI plotting }
\description{
    Function for plotting objects of class \code{POI}.
}
\usage{
   plotPOI(POI)
   plotPOIGraph(POI)
}
\arguments{
  \item{POI}{ Object of class POI }
}
\details{
  \code{plotPOI} and \code{plotPOIGraph} will try to load \pkg{tkrplot} in order to allow graphical user interaction. Otherwise \code{POIPlot} will be used.

  Graphical User Interaction defaults:

   \code{Mouse Click Motion} 

      Drag points over. Basic interaction which allows you to move any point to the center of the disk, where detail is augmented.

   \code{'+'}
    
      Increments fisheye distortion factor. Same functionality using mousewheel.

   
   \code{'-'} 
   
      Decrements fisheye distortion factor. Same functionality using mousewheel.   

   
   \code{'0'} 
   
      Increments animation smoothness.    

   
   \code{'.'} 
   
      Decrements animation smoothness.    

   
   \code{Mouse Double Clicking} 
   
      Retunrs closest point.  

   
   \code{Mouse Middle Clicking} 
   
      Draw a circle and returns and object of class vector called 'insiders' with every element inside. "insiders" object will be created in POI.env.  (POI.env$insiders)  
   
}

\seealso{\code{\link{POI-class}},\code{\link{POIPlot-methods}}, \code{\link{POIPlot}}}

\examples{
\dontrun{   
   ## rgb colors 
   rgbPOI = POICreate(type = 'POI', wordsInQuery = c('red','green','blue'),
                       colores = colors(), itemsCol = colors(),
                       docs = cbind(colors(), 1:length(colors())),
                       cos.query.docs = rep(1,length(colors())),
                       matrizSim = t(col2rgb(colors())) / max(t(col2rgb(colors())))
   )
   POIcoords(rgbPOI) <- POICalc(rgbPOI ,length(rgbPOI@wordsInQuery))
   try(rm('POI.env'), silent = T)
   plotPOI(rgbPOI)
   
   ## graph example
   # igraph package  -- graph.tree example looks great!
   if (require(igraph)) {
     GRAPH <- graph.tree(500, children = 10, mode = 'in')    
     fCompress <- 350 # compress factor
     graphPOI <- POICreate(type = 'POIGraph')
     graphPOI@objeto <- layout.fruchterman.reingold(GRAPH,dim = 2) / fCompress
     graphPOI@EDGES <- cbind(GRAPH[[3]],GRAPH[[4]]) + 1 
     graphPOI@docs <- matrix(c(seq(1:nrow(graphPOI@objeto)), seq(1:nrow(graphPOI@objeto))), ncol = 2)
     try(rm('POI.env'), silent = T)
     plotPOIGraph(graphPOI)
    } 
   # manually made  -- but igraph example looks great!!
   graphPOI <- POICreate(type = 'POIGraph')
   graphPOI@objeto <- graphPOI@objeto <- rbind(c(0,.05), c(.05,0), c(0,-.05), c(-.05,0) ,round(circulo(0,0,.3,PLOT = FALSE),2))
   graphPOI@EDGES <-  matrix(c(rep(1,25), rep(2,25), rep(3,25), rep(4,25), seq(1,100)), ncol = 2)
   graphPOI@docs <- matrix(c(seq(1:nrow(graphPOI@objeto)), seq(1:nrow(graphPOI@objeto))), ncol = 2)
   graphPOI@colores <- c(rep(2,25), rep(3,25), rep(4,25), rep(5,25))
   try(rm('POI.env'), silent = T)
   plotPOIGraph(graphPOI)

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

   matrizSim  = matrizSim^3 
   irisPOI = POICreate('POI')
   irisPOI@matrizSim <- matrizSim
   irisPOI@wordsInQuery <- c('high.Sepal.Length', 'high.Sepal.Width', 
                             'high.Petal.Length', 'high.Petal.Width',
                             'low.Sepal.Length', 'low.Sepal.Width', 
                             'low.Petal.Length', 'low.Petal.Width')
   POIcoords(irisPOI) <- POICalc(irisPOI ,length(irisPOI@wordsInQuery))
   irisPOI@docs <- cbind(matrix(seq(1:nrow(irisPOI@objeto))),matrix(seq(1:nrow(irisPOI@objeto))))
   irisPOI@colores <- c(rep(2,50),rep(3,50),rep(4,50))
   try(rm('POI.env'), silent = T)
   plotPOI(irisPOI)

   ## USArrest Example
   # POIS = (high - low) murder, assault and rape rates
   # colors = Population
   data(USArrests)
   matrizSim = cbind(
    1 - (max(USArrests[,1]) - USArrests[,1]) / (max(max(USArrests[,1]) - USArrests[,1])),
    1 - (max(USArrests[,2]) - USArrests[,2]) / (max(max(USArrests[,2]) - USArrests[,2])),
    1 - (max(USArrests[,4]) - USArrests[,4]) / (max(max(USArrests[,4]) - USArrests[,4])),                                                                                    
    1 - (min(USArrests[,1]) - USArrests[,1]) / (min(min(USArrests[,1]) - USArrests[,1])),
    1 - (min(USArrests[,2]) - USArrests[,2]) / (min(min(USArrests[,2]) - USArrests[,2])),
    1 - (min(USArrests[,4]) - USArrests[,4]) / (min(min(USArrests[,4]) - USArrests[,4])))

   usaPOI = POICreate('POI')
   usaPOI@matrizSim <- matrizSim
   usaPOI@wordsInQuery <- c(paste('High', names(USArrests[,c(1,2,4)])), paste('Low', names(USArrests[,c(1,2,4)])))
   POIcoords(usaPOI) <- POICalc(usaPOI ,length(usaPOI@wordsInQuery))
   usaPOI@docs <- cbind(matrix(rownames(USArrests)),matrix(seq(1:nrow(usaPOI@objeto))))
   usaPOI@cos.query.docs <-  USArrests[,3] / max(USArrests[,3])
   POIcolors(usaPOI)<- query2Cols(usaPOI, 'terrain')
   try(rm('POI.env'), silent = T)
   plotPOI(usaPOI)

   ## clusters  EXAMPLE
   x <- matrix(rnorm(1500, mean = 0, sd = .5), ncol = 5) 
   atipV1 = sample(nrow(x), as.integer(nrow(x)/3)) # outliers in V1
   atipV2 = sample(nrow(x), as.integer(nrow(x)/3)) # outliers in V2
   x[atipV1, 1] <- rnorm(100, mean = 2, sd = .5)  
   x[atipV2, 2] <- rnorm(100, mean = 2, sd = .5)  
   cl <- kmeans(x, 3, iter.max = 100 ,nstart = 25)
   matrizSim =  sqrt(round((x - colMeans(x))^2,1 )/nrow(x))    # simmilarity within outliers
   # OR (uncomment one)
   # matrizSim =  1 - sqrt(round((x - colMeans(x))^2,1 )/nrow(x))    # simmilarity within mean
   varPOI = POICreate('POI')
   varPOI@matrizSim <- matrizSim
   varPOI@wordsInQuery <- 1:ncol(matrizSim)
   POIcoords(varPOI) <- POICalc(varPOI ,length(varPOI@wordsInQuery))
   # if elements labels bother 
   varPOI@docs  <- cbind(rep(' ',nrow(varPOI@objeto)),matrix(seq(1:nrow(varPOI@objeto)))) 
   varPOI@cos.query.docs <-  rep(1,nrow(matrizSim))
   varPOI@colores <- cl$cluster  + 1
   try(rm('POI.env'), silent = T)
   plotPOI(varPOI)
 
}
}