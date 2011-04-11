\name{write.xml}
\alias{write.xml}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Write a data frame in XML format
}
\description{
Writes the data frame to a file in the XML format.
}
\usage{
write.xml(data, file = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{the data frame object to save.}
  \item{file}{a file name to be written to.}
}
\details{
  This function requires the \pkg{XML} package to be installed
  to function properly.
}
\value{
  \sQuote{\code{NULL}}
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Claus Ekstrom \email{ekstrom@life.ku.dk} based on work by Duncan
Temple Lang.
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
data(trees)
write.xml(trees, file="mydata.xml")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ file }

