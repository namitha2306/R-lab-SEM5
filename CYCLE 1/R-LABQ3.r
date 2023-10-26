# Define a Student class
StudentInfo <- setRefClass("StudentInfo",
                       fields = list(
                         student_name = "character",
                         student_age = "integer",
                         student_grade = "character"
                       ),
                       methods = list(
                         initialize = function(student_name, student_age, student_grade) {
                           if (is.numeric(student_age) && student_age > 0 &&
                               student_grade %in% c("A", "B", "C", "D", "F")) {
                             student_name <<- student_name
                             student_age <<- student_age
                             student_grade <<- student_grade
                           } else {
                             stop("Invalid student record")
                           }
                         }
                       )
)

# Create a list to store valid student objects
valid_student_records <- list()

# Read student information and perform validation
while (TRUE) {
  student_name <- readline("Enter student name (or 'quit' to exit): ")
  if (tolower(student_name) == "quit") {
    break
  }
  student_age <- as.integer(readline("Enter student age: "))
  student_grade <- readline("Enter student grade (A, B, C, D, F): ")
  
  student_info <- StudentInfo$new(student_name, student_age, student_grade)
  valid_student_records <- c(valid_student_records, student_info)
}

# Calculate and display the average age of valid students
if (length(valid_student_records) > 0) {
  valid_ages <- sapply(valid_student_records@ref, function(x) x$student_age)
  average_student_age <- mean(valid_ages)
  cat("Average age of valid students: ", round(average_student_age, 2), "\n")
} else {
  cat("No valid student records entered.\n")
}
