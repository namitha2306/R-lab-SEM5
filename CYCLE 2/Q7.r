# Load necessary libraries
library(ggplot2)  # for creating plots

# Load your COVID-19 time series data (adjust the file path as needed)
data <- read.csv("C:/Users/Lenovo/Downloads/archive/time-series-19-covid-combined.csv")

# Convert the date column to a Date class
data$Date <- as.Date(data$Date)

# Create a time series object using the 'ts' function (assuming daily data)
ts_data <- ts(data$Confirmed, start = start(data$Date), end = end(data$Date), frequency = 1)

# Apply a 7-day moving average to capture trends
ts_sma <- ma(ts_data, order = 7)

# Plot the time series data and the moving average
autoplot(ts_data) +  # Create the base plot for the original time series data
  autolayer(ts_sma, series = "7-Day Moving Average", alpha = 0.7) +  # Overlay the 7-day moving average
  labs(title = "COVID-19 Time Series Plot with 7-Day Moving Average",  # Title and axis labels
       x = "Date",
       y = "Confirmed Cases") +
  scale_y_continuous(labels = scales::comma)  # Format y-axis labels with commas

# Save the plot as an image file
ggsave("covid19_time_series_plot.png")
