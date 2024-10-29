random_dna <- function(lenght_of_dna){

  #Creating a vector of length lenght_of_dna randomly chosen from the nucleic bases.
  sample_dna_vector <- sample(c("A", "T", "G", "C"), size = name_me2, replace = TRUE)

  #concatenates the vector with nothing between the elements
  random_dna_string <- paste0(sample_dna_vector, collapse = "")
  return(random_dna_string)
}
