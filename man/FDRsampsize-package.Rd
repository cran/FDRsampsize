\name{FDRsampsize-package}
\alias{FDRsampsize-package}
 \alias{FDRsampsize-package}
 \alias{FDRsampsize}
 \docType{package}
 \title{An R package to Perform Power and Sample Size Calculations for Microarray Studies}
 \description{ A general approach to performing power and sample size calculations for microarray
 studies has been developed in the literature.  However, the software associated with those articles
 implements the approach only for studies that will perform the t-test or one-way ANOVA to compare 
 gene expression across two or more groups.  Here, we describe a set of R routines that implement 
 the general method for power and sample size calculations for a wider variety of statistical tests.  
 These routines accept the name of a function that computes the power for the statistical test of 
 interest and thus have the flexibility to perform calculations for virtually any statistical test 
 with a known power formula.}
 \details{
 \tabular{ll}{
 Package: \tab FDRsampsize\cr
 Type: \tab Package\cr
 Version: \tab 1.0\cr
 Date: \tab 2016-01-06\cr
 License: \tab GPL(>=2) \cr }
 }
 \author{Stan Pounds <stanley.pounds@stjude.org> }
 \references{A Onar-Thomas, S Pounds. FDRsampsize: An R package to Perform Generalized Power and Sample Size Calculations for Planning Studies that use the False Discovery Rate to Measure Significance, Manuscript 2016.

 Pounds, Stan, and Cheng Cheng. "Sample size determination for the false discovery rate." Bioinformatics 21.23 (2005): 4263-4271.

  Jung, Sin-Ho. "Sample size for FDR-control in microarray data analysis." Bioinformatics 21.14 (2005): 3097-3104.}
