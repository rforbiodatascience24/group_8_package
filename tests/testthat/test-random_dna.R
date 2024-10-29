test_that("lenght test of random dna", {
  expect_equal(nchar(random_dna(lenght_of_dna = 10)), 10)
})
