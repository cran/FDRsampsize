\name{power.ranksum}
\alias{power.ranksum}
 \title{Compute power of the rank-sum test}
 \description{Compute power of rank-sum test;Uses formula of Noether (JASA 1987)}
\usage{
power.ranksum (n, alpha, p) 
}
 \arguments{
 \item{n}{sample size (scalar)}
 \item{alpha}{p-value threshold (scalar)}
 \item{p}{Pr (Y>X), as in Noether (JASA 1987)}
 }
 \value{vector of power estimates for two-sided tests}
 \details{In most applications, the null effect size will be designated by p = 0.5, which indicates that
          Thus, in the example below, the argument null.effect=0.5 is specified in the call to fdr.sampsize.}
 \examples{
 power.ranksum        # show the power function
 res=fdr.sampsize(fdr=0.1,
                  ave.pow=0.8,
                  pow.func=power.ranksum,
                  eff.size=rep(c(0.8,0.5),c(100,900)),
                  null.effect=0.5)
 res
}
 \references{Noether, Gottfried E (1987) Sample size determination for some common nonparametric tests.  
             Journal of the American Statistical Association, 82:645-647.}
