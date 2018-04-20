\name{nbinMto}
\alias{nbinMto}

\title{ Sample size iteration for many-to-one comparisons of binomials }

\description{This function iteratively increases sample size until a pre-specified any-pair power of a test is achieved. 
Here, only power to reject the null hypothesis of no difference between treatment and control ( H0[i]: p[i] - p[0]=0 ) is covered .
Approximative calculation of power is used, the ratio of sample size to the control group to the treatment 
groups can be specified.
}

 \usage{
nbinMto(Ntotal = 500, pH1, ratio = 1, alpha = 0.05, power = 0.8,
 alternative = "two.sided", method = "Add4", trace = FALSE)
}
\arguments{
  \item{Ntotal}{ a single number or vector with two integers specifying the maximum or the range of total sample size allowed in iteration }
  \item{pH1}{ numeric vector with values between 0 and 1, specifying the proportions of success under the alternative hypothesis;
the first value will be taken as the proportion of the control group, and will be asssumed for the null hypothesis  }
  \item{ratio}{ a single positive number, specifying the ratio between sample size of control group to treatment groups: ratio=n0/ni  }
  \item{alpha}{ pre-specified type-I-error of the test }
  \item{power}{ desired power }
  \item{alternative}{ character string defining the alternative hypothesis, take care, that it fits to the parameters settings specified in pH1  }
  \item{method}{ character sring defining the confidence interval method to be used, one of "Add4", "Add2", "Wald" }
  \item{trace}{ logical, indicating whether only the step acchieving pre-sepcified power (FALSE) shall be shown or all iteration steps are to be displayed (TRUE) }
}
\details{
   This function uses approximative calculation of any-pair-power of a maximum test as described in Bretz and Hothorn (2002) for a
Wald test of multiple contrasts of binary data. Differing from Bretz and Hothorn (2002), unpooled variance estimators are used in the
present function. In case of "Add4" and "Add2"-method, the Wald expectation and variance are replaced by that of add-4 and add-2.
Since the approximate calculation assumes normality, this function can give misleading results, if sample size is small and/or proportions
of success are extreme. 
The present function only calcualtes power for the test adjusting via the multivariate-normal-distribution.
For Bonferroni-adjusted or unadjusted tests, one can make use of well-known formulas for power and sample size for binary data.

The use of the function simPower in this package will result in power estimation closer to the true performance of the methods but is less convenient.
}
\value{
  A matrix containing in columns: n of the single groups, the total n, the approximative any-pair-power.
}
\references{
\bold{ Bretz,F and Hothorn, LA (2002):} Detecting dose-response using contrasts: asymptotic power and sample size determination for binomial data.
Statistics in Medicine 21, 3325-3335.
 }
\author{ Frank Schaarschmidt }

\note{  
The results of this functions are roughly checked by comparison with results of power simualtion, which indicate that the approximations are reasonable for
at least moderate n and not too extreme proportions.
The performance of a corresponding test using the add-4 or add-2 adjustment is not described.

}
\seealso{ \code{\link{simPower}} to estimate the power of all methods in \code{binMto} by simulation}
\examples{

# Iterate the sample size necessary to achieve
# a power of 80% to reject the null of no treatment
# effects in a dose-response trial for comparing 
# four doses with placebo. The assumed proportions
# of success are 0.45 for the placebo,
# and 0.45, 0.5, 0.5, 0.6  for the increasing doses.
# Assume that only an increase of response is of interest:
# alternative="greater"

# a) use a balanced design: ratio=1

nbinMto(Ntotal = c(800, 1200), pH1=c(0.45, 0.45, 0.5, 0.5, 0.6),
 ratio = 1, alpha = 0.05, power = 0.8, 
 alternative = "greater", method = "Wald", trace = FALSE)

# Compare with the results in Bretz and Hothorn (2002),
# Table III. Note, that in the present function unpooled
# variance estimators are used, while Bretz and Hothorn use 
# a pooled variance estimator.
# Note further, that there is some Monte Carlo Error in computing
# multivariate normal probabilities.

}
\keyword{ htest }