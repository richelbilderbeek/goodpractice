
get_package_name <- function(path = ".") {
  state <- parseNamespaceFile(basename(path), file.path(path, ".."))
}

`%||%` <- function(l, r) { if (is.null(l)) r else l }