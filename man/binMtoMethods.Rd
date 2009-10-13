\name{binMtoMethods}
\alias{Add4}
\alias{Add2}
\alias{NHS}
\alias{Wald}

\title{ CI for difference of two proportions based on standard normal approximation }

\description{
For internal use.  
}

\usage{
Add4(nx, ny, X, Y, quantile, alternative)
Add2(nx, ny, X, Y, quantile, alternative)
NHS(nx, ny, X, Y, quantile, alternative)
Wald(nx, ny, X, Y, quantile, alternative)
}

\arguments{
  \item{nx}{ a single numeric value, number of trials in sample x }
  \item{ny}{ a single numeric value, number of trials in sample y }
  \item{X}{ a single numeric value, number of successes in sample x}
  \item{Y}{ a single numeric value, number of successes in sample y }
  \item{quantile}{ e.g. \code{ qnorm(p=0.975) } for a two-sided 95 percent confidence interval }
  \item{alternative}{ a character string, one of "two.sided", "less", "greater" }
}

\details{
  }
\value{

  A list containing
  \item{conf.int}{vector giving lower and upper bound}
  \item{estimate}{estimated difference px-py}

}
\references{

\emph{Schaarschmidt, F., Biesheuvel, E., Hothorn, L.A. (2009):} Asymptotic simultaneous confidence intervals for many-to-one comparisons of binary proportions in randomized clinical trials, Journal of Biopharmaceutical Statistics 19(2):292-310.

\emph{Agresti, A. and Caffo, B. (2000):} Simple and effective confidence intervals for proportions and differences of proportions result from adding two successes and two failures. American Statistician 54 (4), 280-288. 

\emph{Brown, L. and Li, X. (2005):} Confidence intervals for two sample binomial distribution. Journal of Statistical Planning and Inference 130, 359-375.

\emph{Newcombe, R.G. (1998):} Interval estimation for the difference between independent proportions: comparison of eleven methods. Statistics in Medicine 17, 873-890.

 }
\author{ Frank Schaarschmidt }
 
\seealso{ \code{pairwise.prop.test} }

\keyword{ htest }
