% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TENxMTX-class.R
\name{TENxMTX}
\alias{TENxMTX}
\title{TENxMTX: Represent Matrix Market Format Files from 10X}
\usage{
TENxMTX(resource, compressed = FALSE, ...)
}
\arguments{
\item{resource}{character(1) The path to the file}

\item{compressed}{logical(1) Whether the resource file is compressed (default
FALSE)}

\item{...}{Additional inputs to the low level class generator functions}
}
\value{
A \code{SummarizedExperiment} instance with a \code{dgCMatrix} in the assay
}
\description{
This constructor function accepts \code{.mtx} and \code{.mtx.gz} compressed formats
for eventual importing. It is mainly used with tarball files from 10X
Genomics, where more annotation data is included. Importing solely the
\code{.mtx} format will provide users with a \code{SummarizedExperiment} with an assay
of class \code{dgCMatrix} from the \code{Matrix} package. Currently, other formats are
not supported but if you'd like to request support for a format, please open
an issue on GitHub.
}
\examples{

mtxf <- system.file(
    "extdata", "pbmc_3k_ff_bc_ex.mtx",
    package = "TENxIO", mustWork = TRUE
)

con <- TENxMTX(mtxf)

import(con)

}
