% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AppenderElasticSearch.R
\name{AppenderElasticSearch}
\alias{AppenderElasticSearch}
\title{Log to ElasticSearch}
\value{
The \verb{$new()} method returns an \link[R6:R6Class]{R6::R6} that inherits from
\link[lgr:Appender]{lgr::Appender} and can be uses as an appender by a \link[lgr:Logger]{lgr::Logger}.
}
\description{
\strong{NOTE}: \strong{Maturing}; not yet fully documented but well tested in
a production scenario
}
\seealso{
Other Appenders: 
\code{\link{AppenderAWSCloudWatchLog}},
\code{\link{AppenderDbi}},
\code{\link{AppenderDynatrace}},
\code{\link{AppenderGmail}},
\code{\link{AppenderPool}},
\code{\link{AppenderPushbullet}},
\code{\link{AppenderSendmail}},
\code{\link{AppenderSyslog}}
}
\concept{Appenders}
\section{Super classes}{
\code{\link[lgr:Filterable]{lgr::Filterable}} -> \code{\link[lgr:Appender]{lgr::Appender}} -> \code{\link[lgr:AppenderMemory]{lgr::AppenderMemory}} -> \code{AppenderElasticSearch}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{conn}}{a \link[elastic:connect]{ElasticSearch connection}}

\item{\code{index}}{target ElasticSearch index. May either be:
\itemize{
\item a \code{character} scalar, or
\item a \code{function} returning a \code{character} scalar
}}

\item{\code{index_create_body}}{\itemize{
\item \code{character} scalar json string (or \code{NULL}).
\item a \code{function} returning a \code{character} scalar json string (or \code{NULL})
Optional settings,
mappings, aliases, etc... in case the target index has to be created
by the logger. See \url{https://www.elastic.co/docs/api/doc/elasticsearch/operation/operation-indices-create}
}}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-AppenderElasticSearch-new}{\code{AppenderElasticSearch$new()}}
\item \href{#method-AppenderElasticSearch-set_conn}{\code{AppenderElasticSearch$set_conn()}}
\item \href{#method-AppenderElasticSearch-get_data}{\code{AppenderElasticSearch$get_data()}}
\item \href{#method-AppenderElasticSearch-show}{\code{AppenderElasticSearch$show()}}
\item \href{#method-AppenderElasticSearch-flush}{\code{AppenderElasticSearch$flush()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="lgr" data-topic="Filterable" data-id="add_filter"><a href='../../lgr/html/Filterable.html#method-Filterable-add_filter'><code>lgr::Filterable$add_filter()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="Filterable" data-id="filter"><a href='../../lgr/html/Filterable.html#method-Filterable-filter'><code>lgr::Filterable$filter()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="Filterable" data-id="remove_filter"><a href='../../lgr/html/Filterable.html#method-Filterable-remove_filter'><code>lgr::Filterable$remove_filter()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="Filterable" data-id="set_filters"><a href='../../lgr/html/Filterable.html#method-Filterable-set_filters'><code>lgr::Filterable$set_filters()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="Appender" data-id="set_layout"><a href='../../lgr/html/Appender.html#method-Appender-set_layout'><code>lgr::Appender$set_layout()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="Appender" data-id="set_threshold"><a href='../../lgr/html/Appender.html#method-Appender-set_threshold'><code>lgr::Appender$set_threshold()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="AppenderMemory" data-id="append"><a href='../../lgr/html/AppenderMemory.html#method-AppenderMemory-append'><code>lgr::AppenderMemory$append()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="AppenderMemory" data-id="clear"><a href='../../lgr/html/AppenderMemory.html#method-AppenderMemory-clear'><code>lgr::AppenderMemory$clear()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="AppenderMemory" data-id="format"><a href='../../lgr/html/AppenderMemory.html#method-AppenderMemory-format'><code>lgr::AppenderMemory$format()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="AppenderMemory" data-id="set_buffer_size"><a href='../../lgr/html/AppenderMemory.html#method-AppenderMemory-set_buffer_size'><code>lgr::AppenderMemory$set_buffer_size()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="AppenderMemory" data-id="set_flush_on_exit"><a href='../../lgr/html/AppenderMemory.html#method-AppenderMemory-set_flush_on_exit'><code>lgr::AppenderMemory$set_flush_on_exit()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="AppenderMemory" data-id="set_flush_on_rotate"><a href='../../lgr/html/AppenderMemory.html#method-AppenderMemory-set_flush_on_rotate'><code>lgr::AppenderMemory$set_flush_on_rotate()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="AppenderMemory" data-id="set_flush_threshold"><a href='../../lgr/html/AppenderMemory.html#method-AppenderMemory-set_flush_threshold'><code>lgr::AppenderMemory$set_flush_threshold()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lgr" data-topic="AppenderMemory" data-id="set_should_flush"><a href='../../lgr/html/AppenderMemory.html#method-AppenderMemory-set_should_flush'><code>lgr::AppenderMemory$set_should_flush()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AppenderElasticSearch-new"></a>}}
\if{latex}{\out{\hypertarget{method-AppenderElasticSearch-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AppenderElasticSearch$new(
  conn,
  index,
  threshold = NA_integer_,
  layout = LayoutElasticSearch$new(),
  index_create_body = NULL,
  buffer_size = 0,
  flush_threshold = "error",
  flush_on_exit = TRUE,
  flush_on_rotate = TRUE,
  should_flush = NULL,
  filters = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{conn, index}}{see section \emph{Fields}}

\item{\code{threshold, flush_threshold, layout, buffer_size}}{see \link[lgr:AppenderBuffer]{lgr::AppenderBuffer}
A data \code{data.frame}. content of index}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AppenderElasticSearch-set_conn"></a>}}
\if{latex}{\out{\hypertarget{method-AppenderElasticSearch-set_conn}{}}}
\subsection{Method \code{set_conn()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AppenderElasticSearch$set_conn(conn)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AppenderElasticSearch-get_data"></a>}}
\if{latex}{\out{\hypertarget{method-AppenderElasticSearch-get_data}{}}}
\subsection{Method \code{get_data()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AppenderElasticSearch$get_data(
  n = 20L,
  threshold = NA,
  result_type = "data.frame"
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{n}}{\code{integer} scalar. Retrieve only the last \code{n} log entries that match
\code{threshold}}

\item{\code{threshold}}{\code{character} or \code{integer} scalar. The minimum log level
that should be displayed}

\item{\code{result_type}}{\code{character} scalar. Any of:
\itemize{
\item \code{data.frame}
\item \code{data.table} (shortcut: \code{dt})
\item \code{list} (unprocessed list with ElasticSearch metadata)
\item \code{json} (raw ElasticSearch JSON)
}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
see \code{result_type}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AppenderElasticSearch-show"></a>}}
\if{latex}{\out{\hypertarget{method-AppenderElasticSearch-show}{}}}
\subsection{Method \code{show()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AppenderElasticSearch$show(threshold = NA_integer_, n = 20)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AppenderElasticSearch-flush"></a>}}
\if{latex}{\out{\hypertarget{method-AppenderElasticSearch-flush}{}}}
\subsection{Method \code{flush()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AppenderElasticSearch$flush()}\if{html}{\out{</div>}}
}

}
}
