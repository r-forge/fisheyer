\name{IncVadjustMinus}
\alias{resetear}
\alias{IncVadjustMinus}
\alias{IncVadjustPlus}
\alias{MadjustMinus}
\alias{MadjustPlus}
\alias{OnMiddleClick}
\alias{OnDobleClick}
\alias{OnClickMotion}
\alias{MouseWheel}
\title{ Functions for GUI interaction }
\description{
  Not intender to be called directly by user. See details.
}
\usage{
IncVadjustMinus()   
IncVadjustPlus()    
MadjustMinus()      
MadjustPlus()  
MouseWheel(D)     
OnClickMotion(x, y) 
OnDobleClick(x, y)  
OnMiddleClick(x, y) 
resetear(x, y)      
}

\arguments{
  \item{x}{ x coordinate value. }
  \item{y}{ y coordinate value. }
  \item{D}{ Mousewheel value. }
}
\details{
   These functions are used to allow user interaction. \pkg{tkrplot} package is needded. \cr
   
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

   
   \code{Mouse Click Motion} 
   
      Drag points over. Basic interaction which allows you to move any point to the center of the disk, where detail is augmented.
 
}

\author{ 
  Eduardo San Miguel Martin 
} 

\seealso{\code{\link{POIPlot-methods}},\code{\link{POI-class}},\code{\link{plotPOI}},\code{\link{POIPlot}}}

