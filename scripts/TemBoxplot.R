

 # Multi-graph per boxplot explaination: 
 # https://www.geeksforgeeks.org/plot-multiple-boxplots-in-one-graph-in-r/


# for multiple data plots, the data needs to be "framed"
# I believe that means we take 3 sets of data and just
# staple them together in a special way.
# From the looks of it, the data is already organised in a useful way

# step 1: load data,
data(iris)

# step 2: chop up data and reformat it so we can use it
  # it seems the easiest way to do this is to manually extract the arrays
  # first grab subest for flower, then grab the (column?) for sepal length
SLenData <- data.frame (
  Setosa = subset(iris, Species ==     "setosa")$Sepal.Length,   
  ## sepal lengths for Iris Setosa
  Versicolor = subset(iris, Species == "versicolor")$Sepal.Length,  
  ## S-lengths for Iris Versicolor
  Virginica = subset(iris, Species == "virginica")$Sepal.Length
  ## S-lengths for Iris Virginica
)

# step 3: now that we have 3 data sets in one, box it!
boxplot(SLenData, main = "Sepal Length Box Plots")

## now repeat 3 more times
