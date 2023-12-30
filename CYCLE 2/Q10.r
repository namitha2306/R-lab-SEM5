# Load the necessary libraries
install.packages("ggplot2")
install.packages("tidyverse")

library(ggplot2)
library(tidyverse)

# Load the dataset
data <- read.csv("C:/Users/Lenovo/Downloads/house-prices-advanced-regression-techniques/train.csv")

# Fit a simple linear regression model
model <- lm(SalePrice ~ LotArea, data = data)

# Get regression coefficients
slope <- coef(model)[2]
intercept <- coef(model)[1]

# Print coefficients
cat("Slope:", slope, "\n")
cat("Intercept:", intercept, "\n")

# Plot the regression line and scatter plot
ggplot(data, aes(x = LotArea, y = SalePrice)) +
  geom_point() +
  geom_abline(intercept = intercept, slope = slope, color = "red") +
  labs(title = "Linear Regression: House Prices vs. Lot Area",
       x = "LotArea (square feet)",
       y = "SalePrice")