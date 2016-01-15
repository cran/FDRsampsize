\name{fdr.sampsize}
\alias{fdr.sampsize}
 \alias{print.fdr.sampsize}
 \title{Determine sample size required to achieve a desired average power while controlling the FDR at a specified level.}
 \description{Determines the sample size needed to achieve a desired average power while controlling the FDR at a specified level.}
\usage{
fdr.sampsize (fdr, ave.pow, pow.func, eff.size, null.effect, max.n = 500, 
    min.n = 5, tol = 1e-05, eps = 1e-05, lam = 0.95, ...) 
\method{print}{fdr.sampsize}(x,...)
}
 \arguments{
 \item{fdr}{Desired FDR (scalar numeric)}
 \item{ave.pow}{Desired average power (scalar numeric)}
 \item{pow.func}{Character string name of function to compute power; must accept n, alpha, and eff.size as its first three arguments.  Other optional arguments may also be provided.}
 \item{eff.size}{Numeric vector of effect sizes; interally, this will be provided as the third argument of pow.func}
 \item{null.effect}{Scalar value of the effect size under the null hypothesis.  This may be 0 or 1 for tests that respectively use differences or ratios for comparisons.}
 \item{max.n}{Maximum n to consider}
 \item{min.n}{Minimum n to consider}
 \item{tol}{Tolerance for bisection calculations}
 \item{eps}{Epsilon for numerical differentiation}
 \item{lam}{Lambda for computing anticipated pi0 estimate, see Storey 2002.}
\item{x}{result of the fdr.sampsize function}
 \item{...}{additional arguments for pow.func} }
 \details{This function checks the technical conditions regarding whether the desired FDR can be
          achieved by min.n or max.n before calling n.fdr.  Thus, for most applications,
          fdr.sampsize should be used instead of n.fdr.}
 \value{\code{fdr.sampsiz}e returns an object of class 'FDRsampsize', which is a list with the following components:
            \item{OK}{indicates if the requirement is met}
            \item{n}{the computed sample size}
            \item{alpha}{the p-value threshold that gives the desired FDR}
            \item{fdr.hat}{anticipated value of the FDR estimate given n and effect size }
            \item{act.fdr}{actual expected FDR given n and effect size}
            \item{ave.pow}{average power}
            \item{act.pi}{actual value of pi0, the proportion of tests with a true null hypothesis.}
            \item{pi.hat}{expected value of the pi0 estimate}
            \item{eff.size}{input effect size vector}
           }
 \references{A Onar-Thomas, S Pounds. "FDRsampsize: An R package to Perform Generalized Power and Sample Size Calculations for Planning Studies that use the False Discovery Rate to Measure Significance", Manuscript 2015.
 
 Pounds, Stan, and Cheng Cheng. "Sample size determination for the false discovery rate." Bioinformatics 21.23 (2005): 4263-4271.
 
             Jung, Sin-Ho. "Sample size for FDR-control in microarray data analysis." Bioinformatics 21.14 (2005): 3097-3104.}
 \examples{
 power.twosampt             # show the power.cox function
 res=fdr.sampsize(fdr=0.1,
                  ave.pow=0.8,
                  pow.func=power.twosampt,
                  eff.size=rep(c(1,0),c(10,990)),
                  null.effect=0)
 res
 }
