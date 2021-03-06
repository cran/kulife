\name{rootonorm}
\alias{rootonorm}
\alias{rootogram}
\title{
Hanging rootogram for normal distribution
}
\description{
  Create a hanging rootogram for a quantitative numeric vector and
  compare it to a Gaussian distribution.
}
\usage{
rootonorm(x, breaks = "Sturges", type = c("hanging", "deviation"),
scale = c("sqrt", "raw"), zeroline = TRUE,
linecol = "red", rectcol = "lightgrey",
xlab = xname, ylab = "Sqrt(frequency)",
yaxt = "n", ylim = NULL,
mu = mean(x), s = sd(x), gap = 0.1, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a numeric vector of values for which the rootogram is desired
}
\item{breaks}{
   Either the character string \sQuote{Sturges} to use Sturges' algorithm to
  decide the number of breaks or a positive integer that sets the number
  of breaks.
}
\item{type}{
  if \code{"hanging"} then a hanging rootogram is plotted, and if
  \code{"deviation"} then deviations from zero are plotted.
}
  \item{scale}{
    The type of transformation. Defaults to \code{"sqrt"} which takes
    square roots of the frequencies. \code{"raw"} yields untransformed
    frequencies. 
}
\item{zeroline}{
  logical; if \code{TRUE} a horizontal line is added at zero.
}
\item{linecol}{
  The color of the density line for the normal distribution. The default
  is to make a \code{red} density line.
}
\item{rectcol}{
  a colour to be used to fill the bars.  The default of \code{lightgray}
  yields lightgray bars.
}
\item{xlab, ylab}{
  plot labels.  The \code{xlab} and \code{ylab} refer to the x
          and y axes respectively
	}
\item{yaxt}{
  Should y axis text be printed. Defaults to \code{n}.
}

\item{ylim}{
  the range of y values with sensible defaults.
}
\item{mu}{
  the mean of the Gaussian distribution. Defaults to the sample mean of \code{x}.
}
\item{s}{
   the standard deivation of the Gaussian distribution. Defaults to the sample std.dev. of \code{x}.
}
\item{gap}{
  The distance between the rectangles in the histogram.
}
\item{\dots}{
  further arguments and graphical parameters passed to \code{plot}.
}
}
\details{
  The mean and standard deviation of the Gaussian distribution are
  calculated from the observed data unless the \code{mu} and \code{s}
  arguments are given.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  Returns a vector of counts of each bar. This may be changed in the
  future. The plot is the primary output of the function.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Tukey, J. W. 1972. \emph{Some Graphic and Semigraphic Displays}. In
\emph{Statistical Papers in Honor of George W. Snedecor}, p. 293-316.
}
\author{
Claus Ekstrom \email{ekstrom@life.ku.dk}
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
oldpar <- par()
par(mfrow=c(2,2))
rootonorm(rnorm(200))
rootonorm(rnorm(200), type="deviation", scale="raw")
rootonorm(rnorm(200), mu=1)
rootonorm(rexp(200), mu=1)
par(oldpar)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ hplot }
% __ONLY ONE__ keyword per line
