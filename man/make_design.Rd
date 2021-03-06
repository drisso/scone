% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper.R
\name{make_design}
\alias{make_design}
\title{Function to make a design matrix}
\usage{
make_design(bio, batch, W, nested = FALSE)
}
\arguments{
\item{bio}{factor. The biological factor of interest.}

\item{batch}{factor. The known batch effects.}

\item{W}{numeric. Either a vector or matrix containing one or more continuous covariates (e.g. RUV factors).}

\item{nested}{logical. Whether or not to consider a nested design (see details).}
}
\value{
The design matrix.
}
\description{
This function is useful to create a design matrix, when the covariates are two (possibly nested) factors
and one or more continuous variables.
}
\details{
If nested=TRUE a nested design is used, i.e., the batch variable is assumed to be nested within
the bio variable. Here, nested means that each batch is made of observations from only one level of bio,
while each level of bio may contain multiple batches.
}

