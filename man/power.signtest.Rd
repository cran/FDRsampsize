\name{power.signtest}
\alias{power.signtest}
 \title{Compute power of the sign test}
 \description{Use the Noether (1987) formula to compute the power of the sign test}
\usage{
power.signtest (n, alpha, p) 
}
 \arguments{
 \item{n}{sample size (scalar)}
 \item{alpha}{p-value threshold (scalar)}
 \item{p}{Pr (Y>X), as in Noether (JASA 1987)}
 }
 \value{vector of power estimates for two-sided tests}
 \details{In most applications, the null effect size will be designated by p = 0.5 instead of p = 0.
          Thus, in the call to fdr.sampsize, we specify null.effect=0.5 in the example below.}
 \references{Noether, Gottfried E (1987) Sample size determination for some common nonparametric tests.  
             Journal of the American Statistical Association, 82:645-647.}
 \examples{
 power.signtest        # show the power function
 res=fdr.sampsize(fdr=0.1,
                  ave.pow=0.8,
                  pow.func=power.signtest,
                  eff.size=rep(c(0.8,0.5),c(100,900)),
                  null.effect=0.5)
 res
}
