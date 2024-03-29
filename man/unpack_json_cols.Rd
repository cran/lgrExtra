% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SerializerJson.R
\name{unpack_json_cols}
\alias{unpack_json_cols}
\alias{unpack_json_cols.data.table}
\alias{unpack_json_cols.data.frame}
\title{Unserialize data frame columns that contain JSON}
\usage{
unpack_json_cols(x, cols)

\method{unpack_json_cols}{data.table}(x, cols)

\method{unpack_json_cols}{data.frame}(x, cols)
}
\arguments{
\item{x}{a \code{data.frame}}

\item{cols}{\code{character} vector. The names of the text columns containing
JSON strings that should be expanded.}
}
\value{
a \code{data.frame} with additional columns expanded from the columns
containing JSON
}
\description{
Unserialize data frame columns that contain JSON
}
\examples{
x <- data.frame(
  name = "example data",
  fields = '{"letters":["a","b","c"], "LETTERS":["A","B","C"]}',
  stringsAsFactors = FALSE
)
res <- unpack_json_cols(x, "fields")
res
res$letters[[1]]
}
