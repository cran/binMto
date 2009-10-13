\name{Mtoquant}
\alias{Mtoquant}

\title{Calculating quantiles for the many-to-one comparisons of proportions }

\description{
  For internal use only. Returns appropriate quantiles of multivariate normal
 distribution taking correlation into account, or from standard normal distribution,
 depending on specified arguments. 
}

\usage{
Mtoquant(nc, nx, pc, px, conf.level = 0.95, adj = "Dunnett", alternative = "two.sided")
}

\arguments{
  \item{nc}{ number of trials in the control group }
  \item{nx}{ numeric vector giving the number of trials in the treatmnet groups }
  \item{pc}{ proportion of succes in the control group }
  \item{px}{ numeric vector giving proportions of success in the treatment groups}
  \item{conf.level}{ confidence level }
  \item{adj}{ specifying the way of adjustment "Dunnett", "Bonferroni", "Unadj" }
  \item{alternative}{  one of "two.sided", "less" or "greater" }
}
\details{
  
}
\value{
The appropriate quantile for CI construction in binMto.
}
\references{
\emph{Schaarschmidt, F., Biesheuvel, E., Hothorn, L.A. (2009)} Asymptotic simultaneous confidence intervals for many-to-one comparisons of binary proportions in randomized clinical trials, Journal of Biopharmaceutical Statistics 19(2):292-310.

\emph{Piegorsch, W.W. (1991):} Multiple comparisons for analyzing dichotomous response. Biometrics 47, 45-57.

}

\author{ Frank Schaarschmidt }

\examples{

}
\keyword{ htest }
