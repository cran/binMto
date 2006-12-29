\name{binMto-package}
\alias{binMto-package}

\docType{package}

\title{
Asymptotic simultaneous confdence intervals for many-to-one comparisons of proportions
}
\description{
Asymptotic simultaneous confidence intervals for comparison of many treatments with one control,
for the difference of proportions, allows for Dunnett-like-adjustment, Bonferroni or unadjusted intervals.
}
\details{

}
\author{
Frank Schaarschmidt

Maintainer:  <schaarschmidt@biostat.uni-hannover.de>

}
\references{
\bold{Piegorsch, W.W. (1991):} Multiple comparisons for analyzing dichotomous response. Biometrics 47 (1), 45-52.
\bold{Agresti, A. and Caffo, B. (2000):} Simple and effective confidence intervals for proportions and differences of proportions result from adding two successes and two failures. American Statistician 54 (4), 280-288. 
\bold{Brown, L. and Li, X. (2005):} Confidence intervals for two sample binomial distribution. Journal of Statistical Planning and Inference 130, 359-375.
\bold{Newcombe, R.G. (1998):} Interval estimation for the difference between independent proportions: comparison of eleven methods. Statistics in Medicine 17, 873-890.
}
\keyword{ package }

\examples{

# binMto:
# Calculate and plot approximate simultaneous
# confidene intervals for many-to-one comparisons of a
# dichotomous variable in a one-way model. 

# Example from Table 5 in Koch, HF and Hothorn, LA,
# JSPI 82, 83-99:
# A toxicity study with 100 mice randomised in 4 groups.
# Response x was number of deaths after 6 months.
# Control (n=40, x=4), 10 mg/kg (n=20, x=1),
# 50 mg/kg (n=20, x=6), 100 mg/kg (n=20, x=8).

# Approximate simultaneous 95% add-4-CI: 

many21<-binMto(n=c(40,20,20,20), x=c(4,1,6,8),
 names=c("Control", "10mg", "50mg", "100mg"))

many21

plot(many21)

# Note that normal approximation becomes problematic for np(1-p)<2.

}
