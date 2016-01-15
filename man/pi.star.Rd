\name{pi.star}
\alias{pi.star}
 \title{Compute the anticipated null proportion estimate}
 \description{Compute an approximation of the expected value of the null proportion estimate given the sample size and effect size.}
\usage{
pi.star (n, pow.func, eff.size, lam = 0.95, eps = 1e-04, ...) 
}
 \arguments{
 \item{n}{sample size}
 \item{pow.func}{an R function to compute statistical power}
 \item{eff.size}{effect size vector}
 \item{lam}{p-value at which to numerically evaluate p-value pdf (scalar)}
 \item{eps}{epsilon for numerical differentiation}
 \item{...}{additional agruments for the functions} }
 \value{scalar value for approximated E(pi.hat)}
 \references{#> Pounds, Stan, and Cheng Cheng. "Sample size determination for the false discovery rate." Bioinformatics 21.23 (2005): 4263-4271.}
