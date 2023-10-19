check_if_symmetric <- function(input_text){
  text_split <- strsplit(input_text, NULL)[[1]]
  reversed_text = rev(text_split)
  reversed_string <- paste(reversed_text, collapse = "")
  if (input_text == reversed_string){
    return(TRUE)
  }
  return(FALSE)
}

input_text <- readline(prompt="Enter your text: ")
is_symmetric <- check_if_symmetric(input_text)
print(is_symmetric)
if (is_symmetric){
  print('It's symmetric')
} else {
  print("Not symmetric")
}
