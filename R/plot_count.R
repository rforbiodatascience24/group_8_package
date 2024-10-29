#' Plot frequency of amino acids
#'
#' @param input_string A character string to analyze for unique character frequencies.
#' @return A ggplot object displaying a bar plot of unique character counts.
#' @importFrom stringr str_split boundary str_count
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' # Example usage
#' plot <- amino_frequency_plot_local("AABBCDAA")
#' print(plot)  # Print the plot
amino_frequency_plot_local <- function(input_string){
  # Split input string into unique characters
  splitted_string <- input_string |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Count occurrences of each character
  counts <- sapply(splitted_string, function(amino_acid) stringr::str_count(string = input_string, pattern = amino_acid)) |>
    as.data.frame()

  # Rename counts column
  colnames(counts) <- c("Counts")

  # Add input_string as a column
  counts[["input_string"]] <- rownames(counts)

  # Create bar plot for frequencies
  freq_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = input_string, y = Counts, fill = input_string)) +
    ggplot2::geom_col() + # Bar geometry
    ggplot2::theme_bw() + # Clean theme
    ggplot2::theme(legend.position = "none") # No legend

  # Return the plot
  return(freq_plot)
}
