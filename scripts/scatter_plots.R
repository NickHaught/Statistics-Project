# Program Name: scatter_plots.R
# This program visualizes the relationships between the features of the Iris dataset
# using scatter plots and legends to differentiate species.

data(iris)

# Colors for species
colors <- as.numeric(iris$Species)

# Sepal Length vs Sepal Width
plot(iris$Sepal.Length, iris$Sepal.Width, col = colors, pch = 20, cex = 2, xlab = "Sepal Length (cm)", ylab = "Sepal Width (cm)", main = "Sepal Length vs Sepal Width", cex.lab = 2, cex.main = 2.2, cex.axis = 1.8)
legend("topright", legend = levels(iris$Species), col = 1:3, pch = 19, cex = 1.5)

# Petal Length vs Petal Width
plot(iris$Petal.Length, iris$Petal.Width, col = colors, pch = 20, cex = 2, xlab = "Petal Length (cm)", ylab = "Petal Width (cm)", main = "Petal Length vs Petal Width", cex.lab = 2, cex.main = 2.2, cex.axis = 1.8)
legend("topright", legend = levels(iris$Species), col = 1:3, pch = 19, cex = 1.5)

# Sepal Length vs Petal Length
plot(iris$Sepal.Length, iris$Petal.Length, col = colors, pch = 20, cex = 2, xlab = "Sepal Length (cm)", ylab = "Petal Length (cm)", main = "Sepal Length vs Petal Length", cex.lab = 2, cex.main = 2.2, cex.axis = 1.8)
legend("topright", legend = levels(iris$Species), col = 1:3, pch = 19, cex = 1.5)

# Sepal Width vs Petal Width
plot(iris$Sepal.Width, iris$Petal.Width, col = colors, pch = 20, cex = 2, xlab = "Sepal Width (cm)", ylab = "Petal Width (cm)", main = "Sepal Width vs Petal Width", cex.lab = 2, cex.main = 2.2, cex.axis = 1.8)
legend("topright", legend = levels(iris$Species), col = 1:3, pch = 19, cex = 1.5)
