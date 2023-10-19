# Function to compute the total of the sequence
compute_sequence_total <- function(terms) {
  if (terms <= 0) {
    return(0)  # Return 0 for invalid or zero terms
  }
  
  sequence_total <- 0
  operation <- 1  # To alternate between addition and subtraction
  
  for (i in 1:terms) {
    # Compute the current term in the sequence
    term <- i / (2 * i - 1) * operation
    
    # Add or subtract the term from the total
    sequence_total <- sequence_total + term
    
    # Change the operation for the next term
    operation <- -operation
  }
  
  return(sequence_total)
}

# Get the number of terms from the user
terms <- as.integer(readline("Enter the number of terms in the sequence: "))

# Calculate the total of the sequence
sequence_total <- compute_sequence_total(terms)

# Display the result
cat("The total of the sequence with", terms, "terms is:", round(sequence_total, 4), "\n")
