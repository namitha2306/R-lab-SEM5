# Function to perform character sequence compression
sequence_compression <- function(input_sequence) {
  compressed_sequence <- ""
  current_character <- substr(input_sequence, 1, 1)
  character_count <- 1
  
  for (i in 2:nchar(input_sequence)) {
    if (substr(input_sequence, i, i) == current_character) {
      character_count <- character_count + 1
    } else {
      compressed_sequence <- paste(compressed_sequence, current_character, character_count, sep = "")
      current_character <- substr(input_sequence, i, i)
      character_count <- 1
    }
  }
  
  # Add the last character and its count
  compressed_sequence <- paste(compressed_sequence, current_character, character_count, sep = "")
  
  return(compressed_sequence)
}

# Read input sequence from the user
input_sequence <- readline("Enter the sequence to compress: ")

# Perform character sequence compression
compressed_result <- sequence_compression(input_sequence)

# Print the compressed sequence
cat("Compressed sequence:", compressed_result, "\n")
