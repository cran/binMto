\name{ec.mto}
\alias{ec.mto}

\title{ Exact conditional test for many-to-one comparisons of proportions }

\description{
This function calculates the exact distribution of the maximum of test statistics
with unpooled variance estimators for the difference of many-to-one comparisons of
proportion. Using this, p-values for the max-test are computed. 
}

\usage{
ec.mto(n, x, alternative = "less")
}

\arguments{
  \item{n}{ vector of integers specifying the number of trials in each group, where the first value is taken as control}
  \item{x}{ vector of integers specifying the number of successes in each group, where the first value is taken as control  }
  \item{alternative}{ a character string, one of "two.sided", "greater", "less" }
}
\details{
  
}

\value{ a single numeric value, the p.value of the maximum test  
}
\references{
\bold{ Koch, HF and Hothorn, LA (1999):} Exact unconditional distributions for dichotomous data in many-to-one comparisons.
  JSPI 82, 83-99 (section 2.1) }

\author{ Frank Schaarschmidt }
\note{ 
}
\examples{

# Example from Koch and Hothorn (1999), Table 5:
# Chronic toxicity study in mice over six months.


ec.mto(n=c(40,20,20,20), x=c(4,1,6,8),
 alternative= "two.sided")

ec.mto(n=c(40,20,20,20), x=c(4,1,6,8),
 alternative= "less")

ec.mto(n=c(40,20,20,20), x=c(4,1,6,8),
 alternative= "greater")


}
\keyword{ htest }