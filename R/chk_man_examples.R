#' @include lists.R

CHECKS$man_must_have_examples <- make_check(
  # The description of the check
  description = "supply each function with an example",
  # The tag of the check, will be used for ...?
  tags = "man",
  # The preparation, preps value must match in 'prep_man_examples'
  preps = "rf_filename",
  # Text above the failed test
  gp = "each function must supply an example
        to demonstrate how it is used.
        With roxygen2, the @examples tag can be used",
  # Failed filenames
  check = function(state) {
    state$rd_filenames_without_examples
  }
)

