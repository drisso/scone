% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zinb.R
\name{loglik_small}
\alias{loglik_small}
\title{Log-likelihood function of the zero-inflated negative binomial model}
\usage{
loglik_small(parms, Y, Y1, X, W, kx, kw, offsetx, offsetw, linkobj)
}
\arguments{
\item{parms}{a vector of parameters: should contain the values of beta, followed by those of alpha, followed by the log(1/phi)}

\item{Y}{the data matrix (genes in rows, cells in columns)}

\item{Y1}{a logical indicator of Y>0}

\item{X}{the design matrix for the regression on mu (n x k_X)}

\item{W}{the design matrix for the regression on pi (J x k_W)}

\item{kx}{the number of beta parameters}

\item{kw}{the number of alpha parameters}

\item{offsetx}{the offset for the regression on X}

\item{offsetw}{the offset for the regression on W}

\item{linkobj}{the link function object for the regression on pi (typically the result of binomial())}
}
\description{
This function computes the log-likelihood of a standard regression model
}
\details{
This is a (hopefully) memory-efficient implementation of the log-likelihood of a
zero-inflated negative binomial regression model.
In this attempt, the design matrices don't have n*J rows, but n and J, respectively.
The computation is a bit slower, but the memory usage should be much smaller for
large J and n.
}

