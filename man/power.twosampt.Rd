\name{power.twosampt}
\alias{power.twosampt}
 \title{Compute power of the two-samples t-test}
 \description{Estimate power of the two-samples t-test;Uses classical power formula for two-sample t-test;Assumes equal variance and sample size }
\usage{
power.twosampt (n, alpha, delta, sigma = 1) 
}
 \arguments{
 \item{n}{per-group sample size (scalar)}
 \item{alpha}{p-value threshold (scalar)}
 \item{delta}{difference between population means (vector)}
 \item{sigma}{standard deviation (vector or scalar)}
 }
 \value{vector of power estimates for two-sided test}
 \details{For many applications, the null.effect is zero difference of means.}
 \examples{
 power.twosampt        # show the power function
 res=fdr.sampsize(fdr=0.1,
                  ave.pow=0.8,
                  pow.func=power.twosampt,
                  eff.size=rep(c(2,0),c(100,900)),
                  null.effect=0,
                  sigma=1)
 res
}
