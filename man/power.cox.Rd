\name{power.cox}
\alias{power.cox}
 \title{Compute the power of a single-predictor Cox regression model}
 \description{Use the formula of Hseih and Lavori (2000) to compute the power of a single-predictor Cox model.}
\usage{
power.cox (n, alpha, logHR, v) 
}
 \arguments{
 \item{n}{number of events (scalar)}
 \item{alpha}{p-value threshold (scalar)}
 \item{logHR}{log hazard ratio (vector)}
 \item{v}{variance of predictor variable (vector)}
 }
 \value{vector of power estimates for two-sided test}
 \references{
 Hsieh, FY and Lavori, Philip W (2000) Sample-size calculations for the Cox proportional hazards regression model with nonbinary covariates.  Controlled Clinical Trials 21(6):552-560.
 }
 \examples{
 power.cox             # show the power.cox function
 res=fdr.sampsize(fdr=0.1,
                  ave.pow=0.8,
                  pow.func=power.cox,
                  eff.size=rep(c(log(2),0),c(100,900)),
                  null.effect=0,
                  v=1)
 res
}
