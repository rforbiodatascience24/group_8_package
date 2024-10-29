#' Replace T with U
#'
#' @param DNA_sequence
#'
#' @return RNA sequence
#' @export
#'
#' @examples
#' replace_T_with_U(GATTA)

replace_T_with_U <- function(DNA_sequence){
  RNA_sequence <- gsub("T", "U", DNA_sequence)
  return(RNA_sequence)
}


