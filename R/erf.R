#' erf
#'
#'
#'
#' @param type choose the type of evaluation
#' @param x     Value to calculate the evaluation.
#'
#' @param dist     Distribution that you want to use.
#' @param ...     Specific arguments of your model.
#'
#'
erf <- function(type, x, dist, ...) {
  if (testin(dist) == F){
    stop(paste("Distribution", dist,"not yet implemented"))
  } else {
  mc <- match.call(expand.dots = FALSE)
  call_args <- mc$...
  name <- call_args |> names()
  values <- call_args |> unlist()
  args <- mapply(paste0, ",", name, "=", values) |> paste(collapse = "")
  parse(text = paste0(type, dist, "(", x, args, ")")) |> eval()
}
}
