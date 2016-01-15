\name{power.tcorr}
\alias{power.tcorr}
 \title{Compute Power of the t-test for non-zero correlation}
 \description{Estimate power of t-test for non-zero correlation;Uses classical power formula for t-test}
\usage{
power.tcorr (n, alpha, rho) 
}
 \arguments{
 \item{n}{sample size (scalar)}
 \item{alpha}{p-value threshold (scalar)}
 \item{rho}{population correlation coefficient (vector)}
 }
 \value{vector of power estimates for two-sided tests}
 \details{For many applications, the null.effect is rho=0.}
 \examples{
 power.tcorr        # show the power function
 res=fdr.sampsize(fdr=0.1,
                  ave.pow=0.8,
                  pow.func=power.tcorr,
                  eff.size=rep(c(0.3,0),c(100,900)),
                  null.effect=0)
 res
}
