#' Serializers
#'
#' Serializers are used by [AppenderDbi] to store multiple values in a single
#' text column in a Database table. Usually you just want to use the default
#' `SerializerJson`. Please not that `AppenderDbi` as well as `Serializers`
#' are still **experimental**.
#'
#' @return a `Serializer` [R6::R6] object for [AppenderDbi].
#' @export
#' @examples
#' # The defaul Serializer for 'custom fields' columns
#' SerializerJson$new()
Serializer <- R6::R6Class(
  "Serializer"
)



#' @export
#' @rdname Serializer
SerializerJson <- R6::R6Class(
  "SerializerJson",
  inherit = Serializer,
  public = list(
    cols = NULL,
    cols_exclude = NULL,
    col_filter = NULL,
    max_nchar = NULL,
    auto_unbox = NULL,

    initialize = function(
      cols = "*",
      cols_exclude = c("level", "timestamp", "logger", "caller", "msg"),
      col_filter = is.atomic,
      max_nchar = 2048L,
      auto_unbox = TRUE
    ){
      self$cols <- cols
      self$cols_exclude <- cols_exclude
      self$col_filter <- col_filter
      self$max_nchar <- nchar
      self$auto_unbox <- auto_unbox
    },

    serialize = function(event){
      vals <- event$values
      vals <- vals[!names(vals) %in% self$cols_exclude]
      vals <- vals[vapply(vals, self$col_filter, logical(1), USE.NAMES = FALSE)]

      if (length(vals)){
        jsonlite::toJSON(vals, auto_unbox = self$auto_unbox)
      } else {
        NA_character_
      }
    }
  )
)




#' Unserialize data frame columns that contain JSON
#'
#' @param x a `data.frame`
#' @param cols `character` vector. The names of the text columns containing
#'   JSON strings that should be expanded.
#' @return a `data.frame` with additional columns expanded from the columns
#'   containing JSON
#' @export
#'
#' @examples
#' x <- data.frame(
#'   name = "example data",
#'   fields = '{"letters":["a","b","c"], "LETTERS":["A","B","C"]}',
#'   stringsAsFactors = FALSE
#' )
#' res <- unpack_json_cols(x, "fields")
#' res
#' res$letters[[1]]
unpack_json_cols <- function(
  x,
  cols
){
  UseMethod("unpack_json_cols")
}




#' @rdname unpack_json_cols
#' @export
unpack_json_cols.data.table <- function(
  x,
  cols
){
  assert_namespace("jsonlite")

  a <- list(x[ , !cols, with = FALSE])
  b <- lapply(cols, function(nm) unpack_col(x[[nm]]))

  do.call(cbind, c(a, b))
}




#' @rdname unpack_json_cols
#' @export
unpack_json_cols.data.frame <- function(
  x,
  cols
){
  as.data.frame(
    unpack_json_cols.data.table(
      data.table::as.data.table(x),
      cols = cols
    )
  )
}




unpack_row <- function(x){
  if (is.na(x)){
    data.table(..unpack_row_dummy.. = list(NULL))
  } else if (identical(x, "NA")){
    warning("row contains 'NA' string value")
    data.table(..unpack_row_dummy.. = list(NULL))
  } else {
    data.table::as.data.table(
      lapply(jsonlite::fromJSON(x), function(.) if (is_scalar_atomic(.)) . else list(.))
    )
  }
}




unpack_col <- function(x){
  ..unpack_row_dummy.. <- NULL

  r <- lapply(x, unpack_row)
  r <- data.table::rbindlist(r, fill = TRUE, use.names = TRUE)
  if ("..unpack_row_dummy.." %in% names(r)){
    r[, ..unpack_row_dummy.. := NULL]
  }

  r
}
