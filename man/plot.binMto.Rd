\name{plot.binMto}

\alias{plot.binMto}

\title{Plot confidence intervals calculated using binMto.}

\description{
 A plot function for confidence intervals calculated using \code{binMto}.
}

\usage{

\method{plot}{binMto}(x, ltyH0 = 3, H0line = 0,
 ltyCI = 2, main = NULL, xlab = NULL, ...)
}

\arguments{
  \item{x}{ an object of class 'binMto' obtained from function binMto  }
  \item{ltyH0}{ numerical value specifying the line type of the vertical line in the plot, see ?par for options }
  \item{H0line}{ a numerical value, specifying where to draw a vertical line in the plot  }
  \item{ltyCI}{ numerical value specifying the line type of the confidence intervals in the plot, see ?par for options  }
  \item{main}{ a main title as in ?plot}
  \item{xlab}{ a x-axis label as in ?plot }
  \item{\dots}{ further arguments as given in ?plot or ?par }
}

\author{ Frank Schaarschmidt }

\references{
The example below, see:
\emph{Bretz, F. and Hothorn, L.A. (2002):} Detecting dose-response using contrasts: Asymptotic power and sample size determination for binomial data. Statistics in Medicine 21, 3325-3335.
}

\examples{

# 1)Simultaneous CI for Dunnett contrasts
# for the example in Table 1 of 

binMto(x=c(9,19,21,21,24), n=c(20,43,42,42,41), names = c("Placebo",0.125,0.5,0.75,1) )
plot(binMto(x=c(9,19,21,21,24), n=c(20,43,42,42,41), names = c("Placebo",0.125,0.5,0.75,1) ))

}

\keyword{hplot}