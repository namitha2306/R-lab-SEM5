text_input <- readline("Enter the text you'd like to process: ")
word_to_replace <- readline("Enter the word you'd like to substitute: ")
replacement_word <- readline("Enter the new word for substitution: ")

print(paste("The text you've provided: ", text_input))

words_in_text <- strsplit(text_input, " +")[[1]]
print(paste("The total number of words in the text: ", length(words_in_text)))

longest_word_length <- 0
longest_word_found <- ""
total_characters_count <- 0

for (word in words_in_text) {
  total_characters_count <- total_characters_count + nchar(word)
  if (nchar(word) > longest_word_length) {
    longest_word_found <- word
    longest_word_length <- nchar(word)
  }
}

replaced_text <- gsub(word_to_replace, replacement_word, words_in_text)

print(paste(replaced_text, collapse = " "))
average_word_length = total_characters_count / length(words_in_text)
print(paste("The average word length in the text is: ", average_word_length))
print(paste("The longest word in the text is: ", longest_word_found, " with a length of ", longest_word_length))
