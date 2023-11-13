# Load necessary libraries
library(tidyverse)

# Load the Iris dataset
iris <- read.csv("C:/Users/namit/Downloads/irisdataset/iris.csv")

# Display basic information about the dataset
cat("Basic Information about the Iris dataset:\n")
str(iris)

# Display the first few rows of the dataset
cat("\nFirst few rows of the Iris dataset:\n")
head(iris)

# Summary statistics
cat("\nSummary statistics of the Iris dataset:\n")
summary(iris)
iris$Species <- as.factor(iris$Species)
# Pairplot to visualize relationships between numerical features
cat("\nPairplot of Iris dataset:\n")
pairs(iris[, 1:4], col = iris$Species, pch = 16)

# Perform ANOVA
anova_result <- aov(SepalLengthCm ~ Species, data = iris)

# Display ANOVA summary
summary(anova_result)


# Create a pair plot
png("pair_plot.png", width = 800, height = 800)
pairs(iris[, 1:4], col = iris$Species, pch = 16)
dev.off()

