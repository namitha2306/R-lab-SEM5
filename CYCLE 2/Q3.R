library(ggplot2)

ggplot(mtcars, aes(x = factor(cyl), fill = factor(am)))+
  geom_bar(position = "dodge") +
  labs(
    title = "Cylinder Count vs. Gearbox Type",
    x = "Cylinders",
    y = "Frequency"
  ) +
  scale_fill_manual(values = c("0" = "crimson", "1" = "navy")) +
  guides(fill = guide_legend(title = "Gearbox Type"))
