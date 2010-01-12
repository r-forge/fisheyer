\name{multiPOI-class}
\docType{class}
\alias{multiPOI-class}
\alias{POIcalculate<-,multiPOI-method}
\alias{POIPlot,multiPOI-method}

\title{Class "multiPOI" }
\description{	 multiPOI class extends POI class in order to represent POIs as set of POIs }
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("multiPOI", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{matrizSim}:}{Object of class \code{"matrix"} with similarity matrix between set and POIs }
    \item{\code{cos.query.docs}:}{Object of class \code{"vector"} with Similarity of each element of the set }
    \item{\code{wordsInQuery}:}{Object of class \code{"ANY"} Items used as POIs }
    \item{\code{docs}:}{Object of class \code{"matrix"} Items of the set }
    \item{\code{objeto}:}{Object of class \code{"matrix"} 2D Coordinates of the set }
    \item{\code{objetoC}:}{Object of class \code{"matrix"}2D Coordinates of the set with fisheye effect applied }
    \item{\code{Pcoords}:}{Object of class \code{"matrix"} 2D coordinates of the POIs }
    \item{\code{PcoordsFI}:}{Object of class \code{"matrix"} 2D coordinates of the POIs with fisheye effect applied }
    \item{\code{newPcoords}:}{Object of class \code{"matrix"} Use by tkrplot to allow graphical user interaction }
    \item{\code{newcoords}:}{Object of class \code{"numeric"} Use by tkrplot to allow graphical user interaction }
    \item{\code{newcoords_1}:}{Object of class \code{"numeric"} Use by tkrplot to allow graphical user interaction  }
    \item{\code{M}:}{Object of class \code{"numeric"} Fisheye Factor to Apply }
    \item{\code{poisTextCol}:}{Object of class \code{"character"} Color to be plotted }
    \item{\code{colores}:}{Object of class \code{"vector"} Color to be plotted }
    \item{\code{poisCircleCol}:}{Object of class \code{"character"} Color to be plotted }
    \item{\code{linesCol}:}{Object of class \code{"character"} Color to be plotted }
    \item{\code{itemsCol}:}{Object of class \code{"character"} Color to be plotted }
    \item{\code{LABELS}:}{Object of class \code{"logical"} Should POIs be plotted? }
    \item{\code{vscale}:}{Object of class \code{"numeric"} Vertical size of plot }
    \item{\code{hscale}:}{Object of class \code{"numeric"} Horizontal size of plot }
    \item{\code{circleCol}:}{Object of class \code{"character"} Color to be plotted }
    \item{\code{plotCol}:}{Object of class \code{"character"} Color to be plotted }
    \item{\code{itemsFamily}:}{Object of class \code{"character"} Font to use }
    \item{\code{pal}:}{Object of class \code{"character"} Color to be plotted }
    \item{\code{selected}:}{Object of class \code{"numeric"} Used by tkrplot to allow graphical user interaction }
    \item{\code{circRadio}:}{Object of class \code{"numeric"} Radio of circle use to select points. }
    \item{\code{IncVscale}:}{Object of class \code{"numeric"} Animation smoth factor }
    \item{\code{cgnsphrFont}:}{Object of class \code{"numeric"} Font to use for labels}
    \item{\code{xClick_old}:}{Object of class \code{"numeric"} Used by tkrplot to allow graphical user interaction }
    \item{\code{yClick_old}:}{Object of class \code{"numeric"} Used by tkrplot to allow graphical user interaction }
    \item{\code{wordsInQueryFull}:}{Object of class \code{"character"}  }
    \item{\code{clustered}:}{Object of class \code{"logical"} should clustered plot be use? }   
  }
}
\section{Extends}{
Class \code{"\linkS4class{POI}"}, directly.
}
\section{Methods}{
  \describe{
    \item{POIcalculate<-}{\code{signature(object = "multiPOI")}: ... }
    \item{POIPlot}{\code{signature(POI = "multiPOI")}: ... }
	 }
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
\author{ 
  Eduardo San Miguel Martin 
} 

\seealso{
	\code{\link{plotPOI}}, \code{\link{POIPlot}} 
	\code{\linkS4class{POI}} 
}