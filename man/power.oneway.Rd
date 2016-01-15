\name{power.oneway}
\alias{power.oneway}
 \title{Compute power of one-way ANOVA}
 \description{Compute power of one-way ANOVA;Uses classical power formula for ANOVA;Assumes equal variance and sample size }
\usage{
power.oneway (n, alpha, theta, k = 2) 
}
 \arguments{
 \item{n}{per-group sample size (scalar)}
 \item{alpha}{p-value threshold (scalar)}
 \item{theta}{sum of ((group mean - overall mean)/stdev)^2 across all groups for each hypothesis test (vector)}
 \item{k}{the number of groups to be compared, default k=2}
 }
 \value{vector of power estimates for test of equal means}
 \details{For many applications, the null effect is zero for the parameter theta described above.}
 \examples{
 power.oneway        # show the power function
 res=fdr.sampsize(fdr=0.1,
                  ave.pow=0.8,
                  pow.func=power.oneway,
                  eff.size=rep(c(2,0),c(100,900)),
                  null.effect=0,
                  k=3)
 res
}
