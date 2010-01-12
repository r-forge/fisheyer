\name{HeavyWavoidCluttering}
\alias{HeavyWavoidCluttering}
\alias{H1WavoidCluttering}
\title{ Find Similar Rows in a Matrix }
\description{
  Function to retrieve UNIQUE rows in a matrix.
}
\usage{
HeavyWavoidCluttering(object, value = 3)
H1WavoidCluttering(object, value = 3)
}

\arguments{
  \item{object}{ Matrix object to be grouped. }
  \item{value}{ Grouping factor. }
}
\details{
   \code{HeavyWavoidCluttering} and \code{H1WavoidCluttering} are a naive way to eliminate similar rows in a matrix by calling \code{duplicated} on their rounded value.
}
\value{
  \item{newobjeto}{ Matrix without duplicated rows.}
  \item{uniques}{ Vector with Unique rows in original matrix}
  \item{clusters}{ Vector where non-zero entrys are duplicated elements in original matrix.}
}

\seealso{ \code{\link{duplicated}}}

