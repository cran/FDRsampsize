\name{alpha.fdr}
\alias{alpha.fdr}
 \title{Find the fixed p-value threshold that controls the FDR at a specified level}
 \description{Find the p-value threshold that satisfies an FDR requirement (if such a threshold exists)}
\usage{
alpha.fdr (fdr, n, pow.func, eff.size, null.effect, lam = 0.95, 
    eps = 1e-04, tol = 1e-04, ...) 
}
 \arguments{
 \item{fdr}{Desired FDR, scalar}
 \item{n}{sample size}
 \item{pow.func}{an R function to compute statistical power}
 \item{eff.size}{effect size vector}
 \item{null.effect}{value of effect size that corresponds to the null hypothesis}
 \item{lam}{the lambda parameter in computing the pi0 (proportion of tests with a true null) estimate of Storey (2002)}
 \item{eps}{epsilon for numerical differentiation}
 \item{tol}{tolerance for bisection solution to alpha}
 \item{...}{additional agruments for the functions} }
 \value{a list with the following components:
            \item{fdr}{the FDR at that alpha}
            \item{alpha}{the determined alpha}
            \item{OK}{indicates if the requirement is met}
           }
 \examples{
 alpha.fdr(fdr=0.1,n=50,pow.func=power.twosampt,
           eff.size=rep(0:1,c(900,100)),null.effect=0)
 }
 \references{A Onar-Thomas, S Pounds "FDRsampsize: An R package to Perform Generalized Power and Sample Size Calculations for Planning Studies that use the False Discovery Rate to Measure Significance", Manuscript 2015.

             Pounds, Stan, and Cheng Cheng. "Sample size determination for the false discovery rate." Bioinformatics 21.23 (2005): 4263-4271.
 
             Jung, Sin-Ho. "Sample size for FDR-control in microarray data analysis." Bioinformatics 21.14 (2005): 3097-3104.}
