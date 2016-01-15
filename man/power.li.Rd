\name{power.li}
\alias{power.li}
 \title{Compute Power for RNA-Seq Experiments Assuming Poisson Distribution}
 \description{Use the formula of Li et al (2013) to compute power for comparing RNA-seq expression across two groups assuming the Poisson distribution.}
\usage{
power.li (n, alpha, rho, mu0, w = 1, type = "w") 
}
                \arguments{
 \item{n}{per-group sample size}
 \item{alpha}{p-value threshold}  
 \item{rho}{fold-change, usual null hypothesis is that rho=1}
 \item{mu0}{average count in control group}
 \item{w}{ratio of total number of }  
 \item{type}{type of test: "w" for Wald, "s" for score, "lw" for log-transformed Wald, "ls" for log-transformed score.}
                           }
 \value{vector of power estimates for two-sided tests}
 \references{C-I Li, P-F Su, Y Guo, and Y Shyr (2013).  
             Sample size calculation for differential expression analysis of
             RNA-seq data under Poisson distribution.
             Int J Comput Biol Drug Des 6(4).  doi:10.1504/IJCBDD.2013.056830}
 \details{This function computes the  power for each of a series of two-sided
          tests defined by the input parameters.  The power is based on the
          sample size formulas in equations 10-13 of Li et al (2013).
          Also, note that the null.effect is set to 1 in the examples because
          the usual null hypothesis is that the fold-change = 1.}
 \examples{
 power.li      # show the power function
 power.li(88,0.05,1.25,5,0.5,"w")  # recapitulate 80% power in Table 1 of Li et al (2013)
 res=fdr.sampsize(fdr=0.1,
                  ave.pow=0.8,
                  pow.func=power.li,
                  eff.size=rep(c(1.5,1),c(100,900)),
                  null.effect=1,
                  mu0=5,w=1,type="w")
 res
}
