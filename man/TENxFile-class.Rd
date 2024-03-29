% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TENxFile-class.R
\docType{class}
\name{TENxFile-class}
\alias{TENxFile-class}
\alias{.TENxFile}
\title{TENxFile: General purpose class for 10X files}
\description{
The \code{TENxFile} class is the default representation for
unrecognized subclasses. It inherits from the BiocFile class and adds a few
additional slots. The constructor function can handle typical 10X file
types. For more details, see the constructor function documentation.
}
\section{Slots}{

\describe{
\item{\code{extension}}{character(1) The file extension as extracted from the file
path or overridden via the \code{ext} argument in the constructor function.}

\item{\code{colidx}}{integer(1) The column index corresponding to the columns in the
file that will subsequently be imported}

\item{\code{rowidx}}{integer(1) The row index corresponding to rows in the file that
will subsequently be imported}

\item{\code{remote}}{logical(1) Whether the file exists on the web, i.e., the
\code{resource} is a URL}

\item{\code{compressed}}{logical(1) Whether the file is compressed with, e.g., \code{.gz}}
}}

