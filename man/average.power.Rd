\name{average.power}
\alias{average.power}
 \title{Compute average power for a given sample size}
 \description{Compute average power for given sample size, effect size, and p-value threshold}
\usage{
average.power (n, alpha, pow.func, eff.size, null.effect, ...) 
}
 \arguments{
 \item{n}{sample size}
 \item{alpha}{p-value cut off (scalar)}
 \item{pow.func}{an R function to compute statistical power}
 \item{eff.size}{effect size vector}
 \item{null.effect}{value of effect size that corresponds to null hypothesis}
 \item{...}{additional agruments for the functions} }
 \value{average power (scalar)}
 \examples{
 average.power(n=50,alpha=0.01,pow.func=power.twosampt,
               eff.size=rep(0:1,c(900,100)),null.effect=0)
 }
 \references{
 Pounds, Stan, and Cheng Cheng. "Sample size determination for the false discovery rate." Bioinformatics 21.23 (2005): 4263-4271.
 Gadbury GL, et al. (2004) Power and sample size estimation in high dimensional biology.  Statistical Methods in Medical Research 13(4):325-38.
 Jung, Sin-Ho. "Sample size for FDR-control in microarray data analysis." Bioinformatics 21.14 (2005): 3097-3104.}
