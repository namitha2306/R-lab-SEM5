# Function to create a random access code
generate_access_code - function(code_length) {
  uppercase_chars - LETTERS
  lowercase_chars - letters
  numeric_digits - 09
  special_symbols - c('!', '@', '#', '$', '%', '^', '&', '', '(', ')', '_', '+', '[', ']', '{', '}', '', ';', '', ',', '.', '', '')
  
  all_characters - c(uppercase_chars, lowercase_chars, as.character(numeric_digits), special_symbols)
  
  if (code_length  4) {
    cat(Access code must have a minimum length of 4 characters.n)
    return(NULL)
  }
  
  access_code - c(sample(uppercase_chars, 1),
                    sample(lowercase_chars, 1),
                    sample(numeric_digits, 1),
                    sample(special_symbols, 1))
  
  remaining_length - code_length - 4
  
  for (i in 1remaining_length) {
    access_code - c(access_code, sample(all_characters, 1))
  }
  
  access_code - paste(sample(access_code), collapse = '')
  return(access_code)
}

# Prompt the user for the desired access code length
while (TRUE) {
  code_length - as.integer(readline(Enter the desired access code length ))
  
  if (!is.na(code_length)) {
    break
  }
  
  cat(Please input a valid integer for code length.n)
}

generated_access_code - generate_access_code(code_length)

if (!is.null(generated_access_code)) {
  cat(Generated Access Code , generated_access_code, n)
}
