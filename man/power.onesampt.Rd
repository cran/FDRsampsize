\name{power.onesampt}
\alias{power.onesampt}
 \title{Compute power of the one-sample t-test}
 \description{Estimate power of the one-sample t-test;Uses classical power formula for one-sample t-test}
\usage{
power.onesampt (n, alpha, delta, sigma = 1) 
}
 \arguments{
 \item{n}{number of events (scalar)}
 \item{alpha}{p-value threshold (scalar)}
 \item{delta}{difference of actual mean from null mean (vector)}
 \item{sigma}{standard deviation (vector or scalar, default=1)}
 }
 \value{vector of power estimates for two-sided test}
 \examples{
 power.onesampt        # show the power function
 res=fdr.sampsize(fdr=0.1,
                  ave.pow=0.8,
                  pow.func=power.onesampt,
                  eff.size=rep(c(2,0),c(100,900)),
                  null.effect=0,
                  sigma=1)
 res
}
