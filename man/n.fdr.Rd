\name{n.fdr}
\alias{n.fdr}
 \title{Find the sample size that meets desired FDR and power criteria}
 \description{Find smallest sample size that meets requirements for average power and FDR}
\usage{
n.fdr (ave.pow, fdr, pow.func, eff.size, null.effect, lam = 0.95, 
    eps = 1e-04, n0 = 5, n1 = 500, tol = 1e-06, ...) 
}
 \arguments{
 \item{ave.pow}{required average power (scalar)}
 \item{fdr}{required FDR (scalar)}
 \item{pow.func}{name of R function that computes statistical power}
 \item{eff.size}{effect size vector}
 \item{null.effect}{Value of effect size that indicates null}
 \item{lam}{p-value at which to evaluate ensemble PDF}
 \item{eps}{epsilon for numerical differentiation}
 \item{n0}{smallest sample size to be considered for bisection}
 \item{n1}{maximum sample size to be considered for bisection}
 \item{tol}{tolerance for solving for alpha in iterations}
 \item{...}{additional agruments for the functions} }
 \details{This performs the sample size calculation without checking whether the
          minimum or maximum sample size satisfy the desired requirements.  The fdr.sampsize
          function checks these conditions and then calls n.fdr.  Thus, many users will
          may prefer to use the sampsize.fdr function instead of n.fdr.}
 \value{a list with the following components:
            \item{n}{a sample size estimate}
            \item{alpha}{the p-value cut-off}
            \item{fdr.hat}{an approximation to the expected value of the FDR estimate given n }
            \item{ave.pow}{the average power}
            \item{fdr.act}{the actual FDR given n}
            \item{pi.hat}{expected value of the pi.hat estimator given n}
            \item{act.pi}{actual pi0}
           }
 \references{A Onar-Thomas, S Pounds. "FDRsampsize: An R package to Perform Generalized Power and Sample Size Calculations for Planning Studies that use the False Discovery Rate to Measure Significance", Manuscript 2015.
 
             Pounds, Stan, and Cheng Cheng. "Sample size determination for the false discovery rate." Bioinformatics 21.23 (2005): 4263-4271.
 
             Jung, Sin-Ho. "Sample size for FDR-control in microarray data analysis." Bioinformatics 21.14 (2005): 3097-3104.}
