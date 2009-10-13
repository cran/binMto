\name{binMto}
\alias{binMto}
\alias{binMto.default}
\alias{binMto.formula}

\title{ Confidence intervals for many-to-one comparisons of proportions}

\description{
  Approximate simultaneous confidence intervals for many-to-one comparisons
of proportions. The add-4, add-2, Newcombes Hybrid Score interval for the difference
of proportions can be calculated using either quantiles of the multivariate
normal distributrion (Dunnett) standard normal quantiles (Bonferroni or unadjusted.)
 
}
\usage{

binMto(x, ...)

\method{binMto}{default}(x, n, names = NULL,
 base = 1, conf.level = 0.95, alternative = "two.sided",
 method = "Add4", adj = "Dunnett", ...)

\method{binMto}{formula}(formula, data, base=1, conf.level=0.95,
 alternative="two.sided", method="Add4", adj="Dunnett", ...)
}

\arguments{
  \item{x}{ vector giving the number of success in the groups}
  \item{n}{ vector giving the number of trials, i.e. the sample size of each group }
  \item{names}{ (character-)vector specifying the names of groups given in x and n, ignored if formula and data.frame are used }
  \item{formula}{ a formula specifying a response and treatment variable like: response~treatment; the response must consist of 0,1 (failure and success) }
  \item{data}{ data.frame containing the response and treatment variable specified in formula }
  \item{base}{ a numeric value specifying which group to be treated as control group }
  \item{conf.level}{ confidence level }
  \item{alternative}{ character string, one of "two.sided", "less", "greater" }
  \item{method}{ character string specifying the method of CI construction to used, one of:
    \kbd{"Add4"}: adding-4-method (Agresti and Caffo, 2000), conservative, recommended for small sample sizes,
    \kbd{"Add2"}: adding-2-method (Brown and Li, 2005),less conservative, recommended for one-sided limits,
    \kbd{"NHS"}: Newcombes Hybrid Score method (Newcombe, 1998),
    \kbd{"Wald"}: Wald method, not recommended, only for large sample sizes and not too extreme proportions.
  }
  \item{adj}{ character string, specifying the adjustment for multiplicity, one of:
    \kbd{"Dunnett"}: Recommended, using quantiles of the multivariate normal distribution
 adjusting for multiplicity and correlation between comparisons depending on sample size and estimated proportion (Piegorsch, 1991),
    \kbd{"Bonf"}: Simple Bonferroni-adjustment, conseravtive for large number of comparisons,
    \kbd{"Unadj"}: Unadjusted interval, i.e. each with local confidence level = conf.level
  }
  \item{\dots}{arguments to be passed to the methods \code{binMto.formula} and \code{binMto.default}}
}

\details{
  All methods only asymptotically hold the nominal confidence level. 
Thus they can not be recommended if sample size is combined with extreme 
proportions of success (close to 0 or 1). Among the available methods Add-4
is most appropriate for small sample sizes, if conservative performance is acceptable.

}
\value{ A list containing:
  \item{conf.int }{a matrix containg estimates, lower and upper confidence limits}
  and further values specified in the function call, apply str() to the output for details
}
\references{ 
\emph{Schaarschmidt, F., Biesheuvel, E., Hothorn, L.A. (2009)} Asymptotic simultaneous confidence intervals for many-to-one comparisons of binary proportions in randomized clinical trials, Journal of Biopharmaceutical Statistics 19(2):292-310.
 }

\author{ Frank Schaarschmidt }


\examples{

# 1)Simultaneous CI for Dunnett contrasts for
# the example in Table 1 of Bretz F and Hothorn LA (2002):
#  Detecting dose-response using contrasts: asymptotic
#  power and sample size determination for binomial data.
#  Statistics in Medicine 21, 3325-3335.

binMto(x=c(9,19,21,21,24),
 n=c(20,43,42,42,41),
 names = c("Placebo", 0.125, 0.5, 0.75, 1) )

plot(binMto(x=c(9,19,21,21,24),
 n=c(20,43,42,42,41),
 names = c("Placebo",0.125,0.5,0.75,1) ))

#########################################################

# 2) Berth-Jones, J., Todd, G., Hutchinson, P.E.,
# Thestrup-Pedersen, K., Vanhoutte, F.P. (2000):
# Treatment of Psoriasis with oral liarozole:
# a dose-ranging study.
# British Journal of Dermatology 143 (6), 1170-1176.

# Three doses of a compound (liarozole) were compared
# to a group treated with placebo. The primary variable
# was defined as the proportion of patients with an at
# least marked improvement of psoriasis symptoms. 
# A total of 139 patients were assigned to the 4 treatment
# groups, sample sizes were 34,35,36,34, for the Placebo,
# 50mg, 75mg, and 150mg treatments, respectively.
# The number of patients with marked improvement of
# symptoms was 2,6,4,13 in the 4 treatment groups.

# two-sided Add-4 95-percent confidence intervals:

binMto(x=c(2,6,4,13),
 n=c(34,35,36,34),
 names = c("Placebo","50mg","75mg","150mg") )

plot(binMto(x=c(2,6,4,13),
 n=c(34,35,36,34),
 names = c("Placebo","50mg","75mg","150mg") ))

# One-sided Add-4 95-percent confidence intervals
# (for higher values in treatments than in control):

binMto(x=c(2,6,4,13),
 n=c(34,35,36,34),
 names = c("Placebo","50mg","75mg","150mg"),
 alternative="greater" )



# Comparison with a 2x4 table Chisquare-Test: 

x<-c(2,6,4,13)
n<-c(34,35,36,34)
tab<-rbind(x, n-x)

chisq.test(tab, correct=TRUE)


}
\keyword{ htest }


