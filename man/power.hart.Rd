\name{power.hart}
\alias{power.hart}
 \title{Compute Power for RNA-seq Experiments Assuming Negative Binomial Distribution.}
 \description{Use the formula of Hart et al (2013) to compute power for comparing RNA-seq expression across two groups assuming a negative binomial distribution.}
\usage{
power.hart (n, alpha, log.fc, mu, sig) 
}
 \arguments{
 \item{n}{per-group sample size (scalar)}
 \item{alpha}{p-value threshold (scalar)}
 \item{log.fc}{log fold-change (vector), usual null hypothesis is log.fc=0}
 \item{mu}{read depth per gene (vector, same length as log.fc)}
 \item{sig}{coefficient of variation (CV) per gene (vector, same length as log.fc)}
 }
 \value{vector of power estimates for the set of two-sided tests}
 \references{SN Hart, TM Therneau, Y Zhang, GA Poland, and J-P Kocher (2013).  
             Calculating Sample Size Estimates for RNA Sequencing Data.  
             Journal of Computational Biology 20: 970-978.}
 \details{This function is based on equation (1) of Hart et al (2013).  It
          assumes a negative binomial model for RNA-seq read counts and 
          equal sample size per group.}
 \examples{
 power.hart       # show the power function
 n.hart=2*(qnorm(0.975)+qnorm(0.9))^2*(1/20+0.6^2)/(log(2)^2) # Equation 6 of Hart et al
 power.hart(n.hart,0.05,log(2),20,0.6)                        # Recapitulate 90% power  
 res=fdr.sampsize(fdr=0.1,
                  ave.pow=0.8,
                  pow.func=power.hart,
                  eff.size=rep(c(log(2),0),c(100,900)),
                  null.effect=0,mu=5,sig=1)
 res
}
