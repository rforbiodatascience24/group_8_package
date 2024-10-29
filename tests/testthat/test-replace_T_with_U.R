test_that("replace_T_with_U works", {
  expect_equal(replace_T_with_U(DNA_sequence = "GATTA"), "GAUUA")
})
