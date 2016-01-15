\name{afdr}
\alias{afdr}
 \title{Compute the anticipated FDR}
 \description{Compute the anticipated FDR for given sample size, p-value threshold, and effect size.}
\usage{
afdr (n, alpha, pow.func, eff.size, lam = 0.95, eps = 1e-04, 
    ...) 
}
 \arguments{
 \item{n}{sample size (scalar)}
 \item{alpha}{p-value cut-off (scalar)}
 \item{pow.func}{an R function that computes statistical power}
 \item{eff.size}{effect size vector}
 \item{lam}{p-value at which to evaluate ensemble PDF (for pi.star)}
 \item{eps}{epsilon for numerical differentiation}
 \item{...}{additional agruments for the functions} }
 \value{the aFDR}
 \details{The aFDR is defined by Pounds and Cheng (2005) as the anticipated false discovery rate
          incurred by performing all tests with p-value threshold alpha given the same size
          effect size and power function.}
 \examples{
 afdr(n=50,alpha=0.01,pow.func=power.twosampt,eff.size=rep(c(1,0),c(100,900)))
 }
 \references{Pounds, Stan, and Cheng Cheng. "Sample size determination for the false discovery rate." Bioinformatics 21.23 (2005): 4263-4271.
 
             Jung, Sin-Ho. "Sample size for FDR-control in microarray data analysis." Bioinformatics 21.14 (2005): 3097-3104.}
