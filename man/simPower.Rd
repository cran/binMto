\name{simPower}
\alias{simPower}
\alias{simPowerI}

\title{ Simulation of power for the methods in binmto}
\description{
  Simulation of the any-pair-power and coverage probability if interval methods given in
binmto are used for a decision on hypothesis, for a given setting of sample sizes (n), assumed
parameters (pH1), and parameters to test against (H0diff), and confidence interval method.
}
\usage{
simPower(H0diff, pH1, n, n.sim = 1000, conf.level = 0.95, alternative = "two.sided", method = "Add4", adj = "Dunnett")
}

\arguments{
  \item{H0diff}{ numeric vector or matrix, specifying the differences to test against, i.e. parameters in the null hypothesis }
  \item{pH1}{ numeric vector or matrix, specifying the proportions assumed under the alternative
 the first value of the vector or the first row of the column are taken for the control group  }
  \item{n}{ a vector or matrix of sample sizes, should have the same length or number of columns as pH1 
 the first value of the vector or the first row of the column are taken for the control group }
  \item{n.sim}{ number of simulations to be run }
  \item{conf.level}{ nominal confidence level of the interval }
  \item{alternative}{ character string defining the alternative hypothesis to be tested, take care, that it fits to the parameters settings specified in pH1 }
  \item{method}{ confidence interval method to be used, see ?binmto for details }
  \item{adj}{ adjustment method to be used, see ?binmto for details }
}
\details{
  The function nbinmto uses approximative power calculation tom iterate sample size. Since it assumes normal distribution,
it can have misleading results for small sample sizes and extreme proportions. Then, the simulation of power, which takes the true 
distribution into account, will lead to better choice of sample size.
Either one setting can be simulated, if vectors are given as input values, or several designs or settings can be simulated, if 
input values are given as matrices, where the columns represent the values of single groups or hypotheses to be tested and each
row represents one setting.
Take care that n and pH1 shold have the same length (k+1 groups), but H0diff should be one shorter in length or ncol of the matrix
(k hyothesis).

}
\value{
  A matrix containing the hypotheses to be tested, the parameters assumed under the alternative, the any-pair-power and the 
coverage probability for the setting under the alternative in the columns}
\references{  }
\author{ Frank Schaarschmidt }

\examples{

# three groups are to be tested vs. a control
# test the null-hypothesis that all treatments have the same proportion of success: H0diff=c(0,0,0)
# assume that the proportion of success is 0.2 in the control group, and 0.3,0.4,0.5 in the three treatment groups
# simulate power for balanced designs with 20, 30,...,100 observations per group

# create a matrix for the sample sizes to be used for simulation and have a look at it:

ni<-matrix(rep(seq(20,100,10), times=4), ncol=4)
ni

#
# two-sided testing:

simPower(H0diff=c(0.1,0.1,0.1), pH1=c(0.2,0.3,0.4,0.5), n=ni, n.sim=1000, alternative="two.sided")

# one-sided:

simPower(H0diff=c(0.1,0.1,0.1), pH1=c(0.2,0.3,0.4,0.5), n=ni, n.sim=1000, alternative="greater")

# this will not make sense:
#  simPower(H0diff=c(0.1,0.1,0.1), pH1=c(0.2,0.3,0.4,0.5), n=ni, n.sim=1000, alternative="less")

}
\keyword{ htest }
