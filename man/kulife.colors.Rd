\name{kulife.colors}
\alias{kulife.colors}
\title{
  Color palette for faculty of Life Sciences, University of Copenhagen
}
\description{
Sets the color palette to match the design of the faculty of Life
Sciences, University of Copenhagen
}
\usage{
kulife.colors(n = 4, KUgrey = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{Positive integer. Number of brown tone colors in the palette.}
  \item{KUgrey}{Logical. Should the grey University of Copenhagen color
    be included in the palette.}
}
\value{
  Returns the color palette.
}
\references{
  http://designguide.ku.dk
}
\author{
  Claus Ekstrom \email{ekstrom@life.ku.dk}
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
  \code{\link{palette}}
}
\examples{
kucols <- kulife.colors(3)
pie(1:4, col=kucols)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ color }

