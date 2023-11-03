
library(ggplot2)


mean_mpg <- mean(mtcars$mpg)
sd_mpg <- sd(mtcars$mpg)


p <- ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 3, fill = "lightblue", color = "darkblue") +
  labs(
    title = "Distribution of Miles per Gallon (mpg)",
    x = "Miles per Gallon (mpg)",
    y = "Frequency"
  ) +
  stat_function(
    fun = function(x) dnorm(x, mean = mean_mpg, sd = sd_mpg) * 30,
    color = "darkblue",
    size = 1
  ) +
  geom_text(
    x = 10,
    y = 8,
    label = paste("Mean =", round(mean_mpg, digits = 2),
                   "\nSD =", round(sd_mpg, digits = 2),
                   collapse = "\n"),
    parse = TRUE,
    size = 4
  )

print(p)
