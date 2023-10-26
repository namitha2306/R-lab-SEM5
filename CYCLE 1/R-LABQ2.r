encrypt_character <- function(character, shift_value) {
  if (character %in% letters) {
    encrypted_character <- intToUtf8((utf8ToInt(character) + shift_value - utf8ToInt("a")) %% 26 + utf8ToInt("a"))
  } else if (character %in% LETTERS) {
    encrypted_character <- intToUtf8((utf8ToInt(character) + shift_value - utf8ToInt("A")) %% 26 + utf8ToInt("A"))
  } else {
    encrypted_character <- character
  }
  return(encrypted_character)
}

# Read a sentence and shift value from the user
input_sentence <- readline("Enter a sentence: ")
shift_amount <- as.integer(readline("Enter the shift value: "))

# Encrypt the input sentence
encrypted_result <- sapply(strsplit(input_sentence, NULL), encrypt_character, shift_value = shift_amount)
encrypted_result <- paste(encrypted_result, collapse = "")

# Print the encrypted sentence
cat("Resulting encrypted sentence:", encrypted_result, "\n")