#' derf
#'
#' This function applies erf to density of the model that you choose.
#'
#'
#' @param x     Value to calculate the density.
#'
#' @param dist     Distribution that you want to use.
#' @param ...     Specific arguments of your model.
#'
#'
#' @examples
#' derf(2, dist = "egep", xi = 3, a = 3, b = 3)
#'
#'
#' derf(2, dist = "betagp", xi = 3, sigma = 1, beta1 = 3, alpha = 2)


derf <- function(x, dist, ...) {
  mc <- match.call(expand.dots = FALSE)
  x <- mc$...
  name <- x |> names()
  values <- x |> unlist()
  args <- mapply(paste0, ",", name, "=", values) |> paste(collapse = "")
  parse(text = paste0("d", dist, "(", x, args, ")")) |> eval()
}
