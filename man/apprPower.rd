\name{apprPower}
\alias{apprPower}

\title{ Approximate power (any rejection!) for many-to-one comparison of binomial proportions }

\description{
  Approximative power to reject the hypothesis that all of the k differences 
of proportions of treatment groups vs. control group are zero, i.e.:
probability to reject any H0[i]: p[i]-p[0] = 0, For a given setting of n[i], and p[i]
assumed under the alternative.
}

\usage{
apprPower(n, pH1, alpha = 0.05, alternative = "greater", method = "Add4")
}

\arguments{
  \item{n}{ vector of integers specifying the number of observations in each group, where the first value is taken as sample size of control group}
  \item{pH1}{ numeric vector with values between 0 and 1, specifying the proportions of success under the alternative hypothesis, should have the same length as n }
  \item{alpha}{ pre-specified type-I-error }
  \item{alternative}{ character string defining the alternative hypothesis, take care, that it fits to the parameters settings specified in pH1   }
  \item{method}{ character sring defining the confidence interval method to be used, one of "Add4", "Add2", "Wald"  }
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
a single numeric value: the approximate any-pair power
}
\references{Bretz,F and Hothorn, LA (2002): Detecting dose-response using contrasts: asymptotic power and sample size determination for binomial data.
Statistics in Medicine 21, 3325-3335.  }
\author{ Frank Schaarschmidt }
\note{
The results of this functions are roughly checked by comparison with results of power simualtion, which indicate that the approximations are reasonable for
at least moderate n and not too extreme proportions.
The performance of a corresponding test using the add-4 or add-2 adjustment is not described.


}
\seealso{ simPower }
\examples{

# Recalculate the power of the Dunnett-contrast
# for the first setting in Bretz and Hothorn (2002, Table III),
# using a balanced design and the allocation rule n0/ni=sqrt(k)
# of Dunnett(1955), desiring a power of 80 percent.
# Note that differing from Bretz and Hothorn (2002)
# in the present function unpooled variance estimators
# are used, what might lead to different results.

apprPower(n=c(196, 196, 196, 196, 196),
 pH1=c(0.45, 0.45, 0.5, 0.5, 0.6),
 alpha=0.05, alternative="greater", method="Wald")

apprPower(n=c(294, 147, 147, 147, 147 ),
 pH1=c(0.45, 0.45, 0.5, 0.5, 0.6),
 alpha=0.05, alternative="greater", method="Wald")

}
\keyword{ htest }