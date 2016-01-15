\name{fdr.power}
\alias{fdr.power}
 \title{Compute the average power at a specific FDR control level}
 \description{Compute the average power at a specific level of FDR control for a given effect size and sample size}
\usage{
fdr.power (fdr, n, pow.func, eff.size, null.effect, lam = 0.95, 
    eps = 1e-04, tol = 1e-04, ...) 
}
 \arguments{
 \item{fdr}{Desired FDR, scalar}
 \item{n}{sample size}
 \item{pow.func}{name of R function to compute statistical power}
 \item{eff.size}{effect size vector; will be provided as the third argument of pow.func}
 \item{null.effect}{value of effect size that corresponds to null hypothesis}
 \item{lam}{name of R function to compute statistical power}
 \item{eps}{epsilon for numerical differentiation}
 \item{tol}{tolerance for bisection solution to alpha}
 \item{...}{additional agruments for the functions} }
 \value{average power (scalar) of the tests with a false null hypothesis}
 \examples{
 fdr.power(fdr=0.10,n=50,pow.func=power.twosampt,
           eff.size=rep(0:1,c(900,100)),null.effect=0)
}
 \references{A Onar-Thomas, S Pounds "FDRsampsize: An R package to Perform Generalized Power and Sample Size Calculations for Planning Studies that use the False Discovery Rate to Measure Significance", Manuscript 2016.

 Gadbury GL, et al. (2004) Power and sample size estimation in high dimensional biology.  Statistical Methods in Medical Research 13(4):325-38.

             Pounds S and Cheng C (2005) Sample size determination for the false discovery rate.  Bioinformatics 21(23): 4263-71.}
