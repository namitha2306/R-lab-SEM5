install.packages("ggplot2")
library(ggplot2)
titanic_data <- read.csv("C:/Users/namit/Downloads/titanic/Titanic-Dataset.csv")
# Create a histogram of 'parch'
ggplot(titanic_data, aes(x = Parch)) +
  geom_histogram(binwidth = 1, fill = "plum", color = "black") +
  labs(title = "Histogram of Number of Parents and Children Aboard",
       x = "Number of Parents and Children",
       y = "Frequency")

missing_values <- colSums(is.na(titanic_data))
missing_values

boxplot(titanic_data$Age, main = "Boxplot of Age", ylab = "Age")

columns_with_missing <- c("Age", "Fare")

for (column in columns_with_missing) {
  median_value <- median(titanic_data[, column], na.rm = TRUE)
  titanic_data[, column][is.na(titanic_data[, column])] <- median_value
}

missing_values <- colSums(is.na(titanic_data))
missing_values

boxplot(titanic_data$Age, main = "Boxplot of Age", ylab = "Age")

ggplot(titanic_data, aes(x = factor(Survived), y = Age, fill = factor(Survived))) +
  geom_boxplot() +
  labs(title = "Age Distribution of Survivors and Non-Survivors",
       x = "Survival Status",
       y = "Age",
       fill = "Survival Status") +
  theme_minimal()