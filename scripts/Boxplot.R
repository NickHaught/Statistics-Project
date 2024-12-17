# Program Name: Boxplot.R
# Create boxplots for all features in the Iris dataset

 # Multi-graph per boxplot explaination: 
 # https://www.geeksforgeeks.org/plot-multiple-boxplots-in-one-graph-in-r/
  # we decided to put them in graphs together to save space in paper.

# for multiple data plots, the data needs to be "framed"
# I believe that means we take 3 sets of data and just
# staple them together in a special way.
# From the looks of it, the data is already organised in a useful way

# step 1: load data
data(iris)

## step 1.5: Prepare colors
colors <- c("grey", "red", "green") ## the c is needed

# step 2: chop up data and reformat
  # it seems the easiest way to do this is to manually extract the arrays
  # first grab subsett for flower, then grab the (column?) for sepal length
SLenData <- data.frame (
  Setosa = subset(iris, Species ==     "setosa")$Sepal.Length,   
  ## sepal lengths for Iris Setosa
  Versicolor = subset(iris, Species == "versicolor")$Sepal.Length,  
  ## S-lengths for Iris Versicolor
  Virginica = subset(iris, Species == "virginica")$Sepal.Length
  ## S-lengths for Iris Virginica
)
# step 3: now that we have 3 data sets in one, box it!
boxplot(SLenData, col = colors, main = "Sepal Length Box Plots", cex.lab = 2, cex.main = 2, cex.axis = 2)

## now repeat 3 more times

############### SEPAL WIDTH
SWidthData <- data.frame (
  Setosa = subset(iris, Species ==     "setosa")$Sepal.Width,   
  ## sepal width for Iris Setosa
  Versicolor = subset(iris, Species == "versicolor")$Sepal.Width,  
  ## S-width for Iris Versicolor
  Virginica = subset(iris, Species == "virginica")$Sepal.Width
  ## S-width for Iris Virginica
)
boxplot(SWidthData, col = colors, main = "Sepal Width Box Plots", cex.lab = 2, cex.main = 2, cex.axis = 2)


################## now for petal length
PLenData <- data.frame (
  Setosa = subset(iris, Species ==     "setosa")$Petal.Length,   
  ## petal length for Iris Setosa
  Versicolor = subset(iris, Species == "versicolor")$Petal.Length,  
  ## P-Length for Iris Versicolor
  Virginica = subset(iris, Species == "virginica")$Petal.Length
  ## P-Length for Iris Virginica
)
boxplot(PLenData, col = colors, main = "Petal Length Box Plots", cex.lab = 2, cex.main = 2, cex.axis = 2)


####### petal width
PWidthData <- data.frame (
  Setosa = subset(iris, Species ==     "setosa")$Petal.Width,   
  ## Petal width for Iris Setosa
  Versicolor = subset(iris, Species == "versicolor")$Petal.Width,  
  ## P-width for Iris Versicolor
  Virginica = subset(iris, Species == "virginica")$Petal.Width
  ## P-width for Iris Virginica
)
boxplot(PWidthData, col = colors, main = "Petal Width Box Plots", cex.lab = 2, cex.main = 2, cex.axis = 2)


