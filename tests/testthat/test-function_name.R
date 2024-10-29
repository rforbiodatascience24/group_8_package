test_that("Number of codons is equal to the lowest divisible number by three of the length of the sequence.", {
  # Ensure sequence and codons are defined, with codons split correctly
  sequence <- "ATGGTCCACG"
  result <- c("ATG", "GTC", "CAC")

  expect_equal(seq_to_codons(sequence, start=1), result)
})
