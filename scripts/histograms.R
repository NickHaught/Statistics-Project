# Program Name: histograms.R
# Program Description:
# This program creates histograms for the petal lengths and petal widths of the Iris dataset. 

data(iris)

# Function to calculate and print range and peak frequency
analyze <- function(data, feature, species) {
  range <- range(data)
  hist_data <- hist(data, breaks = 10) 
  max_frequency <- max(hist_data$counts)            
  peak_bin <- hist_data$mids[which.max(hist_data$counts)]  
  print(paste(
    species, "->", feature, ": Range =", range[1], "-", range[2], 
    ", Max Frequency is", max_frequency, "at bin", peak_bin
  ))
}

# Get information for petal length
analyze(iris$Petal.Length[iris$Species == "setosa"], "Petal length", "Setosa")
analyze(iris$Petal.Length[iris$Species == "versicolor"], "Petal length", "Versicolor")
analyze(iris$Petal.Length[iris$Species == "virginica"], "Petal length", "Virginica")

# Get information for petal width
analyze(iris$Petal.Width[iris$Species == "setosa"], "Petal width", "Setosa")
analyze(iris$Petal.Width[iris$Species == "versicolor"], "Petal width", "Versicolor")
analyze(iris$Petal.Width[iris$Species == "virginica"], "Petal width", "Virginica")


# Big histogram for petal length
hist(iris$Petal.Length[iris$Species == "setosa"], main = "Petal Length Distribution for All Species", xlab = "Petal Length (cm)", breaks = 10, col = rgb(0, 0, 1, 0.5), xlim = c(0, 8), ylim = c(0, 15))
hist(iris$Petal.Length[iris$Species == "versicolor"], breaks = 10, col = rgb(1, 0, 0, 0.5), add = TRUE)
hist(iris$Petal.Length[iris$Species == "virginica"], breaks = 10, col = rgb(0, 1, 0, 0.5), add = TRUE)
legend("topright", legend = levels(iris$Species), fill = c(rgb(0, 0, 1, 0.5), rgb(1, 0, 0, 0.5), rgb(0, 1, 0, 0.5)))


# Big Histogram for petal width
hist(iris$Petal.Width[iris$Species == "setosa"], main = "Petal Width Distribution for All Species", xlab = "Petal Width (cm)", col = rgb(0, 0, 1, 0.5), xlim = c(0, 3), ylim = c(0, 30), breaks = 10)
hist(iris$Petal.Width[iris$Species == "versicolor"], breaks = 10, col = rgb(1, 0, 0, 0.5), add = TRUE)
hist(iris$Petal.Width[iris$Species == "virginica"], breaks = 10, col = rgb(0, 1, 0, 0.5), add = TRUE)
legend("topright", legend = levels(iris$Species), fill = c(rgb(0, 0, 1, 0.5), rgb(1, 0, 0, 0.5), rgb(0, 1, 0, 0.5)))
