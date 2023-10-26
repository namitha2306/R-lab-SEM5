
install.packages("ggplot2")
install.packages("dplyr")

library(ggplot2)
library(dplyr)

# Read dataset
mtcars <- read.csv("mtcars.csv")

# Create a bar plot
plot <- ggplot(mtcars, aes(x = factor(cyl), fill = factor(am))) +geom_bar(position = "dodge") +labs(title = "Cylinders VS Transmission Type",x = "Cylinders",y = "Count") +scale_fill_manual(values = c("0" = "purple", "1" = "pink")) +theme_minimal() +theme(legend.title = element_blank(),plot.title = element_text(hjust = 0.5))  # Center the title

#Display the plot
print(plot)
