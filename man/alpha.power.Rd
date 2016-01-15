\name{alpha.power}
\alias{alpha.power}
 \title{Find the p-value threshold that gives a specified average power}
 \description{Find p-value cut-off that yields desired average power given n and effect size}
\usage{
alpha.power (ave.pow, n, pow.func, eff.size, null.effect, tol = 1e-06, 
    ...) 
}
 \arguments{
 \item{ave.pow}{desired average power (scalar)}
 \item{n}{sample size}
 \item{pow.func}{name of R function to compute statistical power}
 \item{eff.size}{effect size vector}
 \item{null.effect}{value of effect size that corresponds to null hypothesis}
 \item{tol}{tolerance for bisection solution to alpha}
 \item{...}{additional agruments for the functions} }
 \value{a list with the following components:
            \item{alpha}{desired value of alpha}
            \item{ave.pow}{average power at that alpha}
           }
 \examples{
 alpha.power(ave.pow=0.8,n=50,pow.func=power.twosampt,
             eff.size=rep(0:1,c(900,100)),null.effect=0)
 }
 \references{A Onar-Thomas, S Pounds. "FDRsampsize: An R package to Perform Generalized Power and Sample Size Calculations for Planning Studies that use the False Discovery Rate to Measure Significance", Manuscript 2015.
 Pounds, Stan, and Cheng Cheng. "Sample size determination for the false discovery rate." Bioinformatics 21.23 (2005): 4263-4271.
 
             Jung, Sin-Ho. "Sample size for FDR-control in microarray data analysis." Bioinformatics 21.14 (2005): 3097-3104.}
