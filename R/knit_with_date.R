#' Insert YAML Header File Name Date
#'
#' @param input
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
#' When you knit your file, it will knit with the current date in the file name
knit_with_date <- function(input, ...) {
  rmarkdown::render(
    input,
    output_file = paste0(
      xfun::sans_ext(input), '-', Sys.Date(), '.',
      xfun::file_ext(input)
    ),
    envir = globalenv()
  )
}
