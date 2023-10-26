data(mtcars)
#Scatterplot of mpg vs disp with different colors for cyl
plot(mtcars$disp, mtcars$mpg,xlab = "Displacement (cu. in.)", ylab = "Miles per Gallon (mpg)",main = "Scatterplot of MPG vs Displacement",col = mtcars$cyl, pch = 19)
# Legend for the number of cylinders (cyl)
legend("topright", legend = unique(mtcars$cyl), col = unique(mtcars$cyl), pch = 19, title = "Cylinders")

# Smooth line to show the trend
lines(lowess(mtcars$disp, mtcars$mpg),col="blue")