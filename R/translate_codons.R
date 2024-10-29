#' translate_codons
#'
#'Translates codon(s) of nucleotides to a string of amino acids (AAs)
#'
#' @param codons Vector containing triplet(s) of nucleotides
#'
#' @return String of the translated amino acid sequence without spacing
#' @export
#'
#' @examples codons <- c("AUG", "UUU", "UGA")
#' @examples translated_sequence <- translate_codons(codons)
#standard_codon_table <- load("data/standard_codon_table.rda")
translate_codons <- function(codons){
  AA_sequence <- paste0(standard_codon_table[codons], collapse = "")
  return(AA_sequence)
}
