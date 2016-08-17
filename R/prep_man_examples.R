# 'state' is a list that will be used by all tests. In this function,
#  you can add the data you need for your checkchk_ function
#' @include lists.R
#' @importFrom goodpracticeeighteen lint_package

PREPS$rf_filename <- function(state, path = state$path) {
  # Collect all .Rd filenames
  state$rd_filenames <- list.files(path = state$path, recursive = TRUE, pattern = "\\.Rd")
  # Collect all .Rd filenames that have no examples
  state$rd_filenames_without_examples <- state$rd_filenames[
    !goodpracticeeighteen::has_examples_in_rds(state$rd_filenames)
  ]
  # Return ?state
  state
}
