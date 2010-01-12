\name{toCartesian}
\alias{toCartesian}
\alias{toPolar}

\title{ Converting between Polar and Cartesian Coordinates  }
\description{
The Cartesian system locates points on a plane by measuring the  horizontal and vertical distances from an arbitrary origin to a point.  These are usually denoted as a pair of values (X,Y).

The Polar system locates the point by measuring the straight line distance, usually denoted by R, from the origin to the point and the angle of an imaginary line from the origin to the point, q, (Greek letter Theta),  measured counterclockwise from the positive X axis.

The conversion math is fairly straightforward:

Polar from Cartesian:

R=Sqrt(x2+y2);

Theta=ArcTan(Y/X);

Cartesian From Polar:

X= R*cos(Theta)

Y= R*sin(Theta)
}
\usage{
toCartesian(t1, rP)
toPolar(x, y)
}
\arguments{
  \item{t1}{ Theta }
  \item{rP}{ Radius }
  \item{x}{ x coordinate }
  \item{y}{ y coordinate }
}

\seealso{\code{\link{atan2}}, \code{\link{cos}}, \code{\link{sin}}} 
\examples{
   toPolar(1,1)
   toCartesian(toPolar(1,1)[1], toPolar(1,1)[2])
}
