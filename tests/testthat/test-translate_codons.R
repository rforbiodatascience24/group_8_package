test_that("translate_codons correctly translates codons to amino acids", {
  codons <- c("AUU","UCA", "UAA")
  expected_sequence <- "IS_"

  result <- translate_codons(codons)

  expect_equal(result, expected_sequence)
})
