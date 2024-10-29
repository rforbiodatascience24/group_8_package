#' seq_to_codons
#'
#' This is a function that takes a nucleotide sequence and splits it into the codons, starting from position indicated in start
#'
#' @param sequence A nucleotide sequence
#' @param start The first position in the nucleotide sequence that should start the codon splitting.
#'
#' @return The codons of the input sequence is outputted as a vector of strings.
#' @export
#'
#' @examples
#' seq_to_codons("ACTGGTCAGATCATGA", start=1)
seq_to_codons <- function(sequence, start = 1){
  sequence_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)
}
