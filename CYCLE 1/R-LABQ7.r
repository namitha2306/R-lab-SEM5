# Function to create the sequence
generate_sequence <- function(elements) {
  if (elements <= 0) {
    return(NULL)  # Return NULL for invalid or zero elements
  }
  
  if (elements == 1) {
    return(0)  # First element
  }
  
  if (elements == 2) {
    return(c(0, 1))  # First two elements
  }
  
  sequence <- numeric(elements)
  sequence[1:2] <- c(0, 1)  # Initialize the first two elements
  
  for (i in 3:elements) {
    sequence[i] <- sum(sequence[(i - 2):(i - 1)]) + sequence[i - 3]  # Sum of last three elements
  }
  
  return(sequence)
}

# Obtain the number of elements from the user
elements <- as.integer(readline("Enter the number of elements in the sequence: "))

# Generate the sequence
result_sequence <- generate_sequence(elements)

if (is.null(result_sequence)) {
  cat("Please input a valid number of elements (greater than 0).\n")
} else {
  cat("The generated sequence with", elements, "elements is:\n")
  cat(result_sequence, sep = ", ", "\n")
}
