
library(ggplot2)


ggplot(mtcars, aes(x = disp, y = wt, color = factor(carb), size = carb)) +
  geom_point() +
  labs(
    title = "Scatter Plot of Displacement vs. Weight by Carburetors",
    x = "Displacement (disp)",
    y = "Weight (wt)"
  ) +
  scale_color_discrete(name = "Carburetors") +
  scale_size_continuous(name = "Carburetors") +
  geom_smooth(method = "lm", se = FALSE)
