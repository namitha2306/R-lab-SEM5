# Function to determine if a number is a prime
identify_prime <- function(number) {
  if (number <= 1) {
    return(FALSE)  # Numbers less than or equal to 1 are not prime
  }
  
  if (number == 2) {
    return(TRUE)  # 2 is a prime number
  }
  
  if (number %% 2 == 0) {
    return(FALSE)  # Even numbers greater than 2 are not prime
  }
  
  max_divisor <- floor(sqrt(number))
  
  for (divisor in 3:max_divisor) {
    if (number %% divisor == 0) {
      return(FALSE)  # If any divisor is found, the number is not prime
    }
  }
  
  return(TRUE)
}

# Choose whether to check a single number or a range
decision <- as.integer(readline("Enter 1 to examine a single number or 2 to explore a range: "))

if (decision == 1) {
  # Check a single number
  num <- as.integer(readline("Enter a number to verify its primality: "))
  if (identify_prime(num)) {
    cat(num, "is a prime number.\n")
  } else {
    cat(num, "is not a prime number.\n")
  }
} else if (decision == 2) {
  # Check a range of numbers
  begin_num <- as.integer(readline("Enter the starting number of the range: "))
  finish_num <- as.integer(readline("Enter the ending number of the range: "))
  
  cat("Prime numbers in the range ", begin_num, " to ", finish_num, " are:\n")
  
  for (num in begin_num:finish_num) {
    if (identify_prime(num)) {
      cat(num, " ")
    }
  }
  cat("\n")
} else {
  cat("Invalid choice. Please enter 1 to check a single number or 2 to check a range.\n")
}
