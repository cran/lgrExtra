% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LayoutDbi.R
\name{select_dbi_layout}
\alias{select_dbi_layout}
\title{Automatically select appropriate layout for logging to a database}
\usage{
select_dbi_layout(conn, table, ...)
}
\arguments{
\item{conn}{a \link[DBI:dbConnect]{DBI connection}}

\item{table}{a \code{character} scalar. The name of the table to log to.}

\item{...}{passed on to the appropriate \code{LayoutDbi} subclass constructor.}
}
\description{
Selects an appropriate Layout for a database table based on
a DBI connection and - if it already exists in the database -
the table itself.
}
