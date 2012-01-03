\name{auc}
\alias{auc}
\title{
  Compute the area under the curve for two vectors.
}
\description{  
    Compute the area under the curve using linear interpolation for two
    vectors where one corresponds to the x values and the other
    corresponds to the y values.    
}
\usage{
auc(x, y, from = min(x), to = max(x), ...)
}
\arguments{
  \item{x}{a numeric vector of x values.
}
  \item{y}{a numeric vector of y values of the same length as x.
}
  \item{from}{The value from where to start calculating the area under
    the curve. Defaults to the smallest x value.
}
\item{to}{
  The value from where to end the calculation of the area under
    the curve. Defaults to the smallest y value.
}
  \item{\dots}{
additional arguments passed on to approxfun. In particular rule can be
set to determine how values outside the range of x is handled.
}
}
\details{
  auc is implemented using the approx function together with
  the composite trapezoid rule.  approx creates a function that performs the linear
  interpolation between points and the trapezoid rule calculates the numerical
  integral, and by combining these we can handle unsorted time values,
  missing observations, ties for the time values, and integrating over
  part of the area or even outside the area. 
}
\value{The value of the area under the curve.
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Claus Ekstrom \email{ekstrom@life.ku.dk}
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{approx}}
}
\examples{
x <- 1:4
y <- c(0, 1, 1, 5)
auc(x, y)

# AUC from 0 to max(x) where we allow for extrapolation
auc(x, y, from=0, rule=2)    

# Use value 0 to the left
auc(x, y, from=0, rule=2, yleft=0)

# Use 1/2 to the left
auc(x, y, from=0, rule=2, yleft=.5)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
