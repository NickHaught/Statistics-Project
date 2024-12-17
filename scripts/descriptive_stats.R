# Program Name: descriptive_stats.R
# Calculates and prints descriptive statistics for Iris features

data(iris)

# custom function to get the outliers easily
find_outliers <- function(x) {
  Q1 <- summary(x)[["1st Qu."]]  # First quartile
  Q3 <- summary(x)[["3rd Qu."]]  # Third quartile 
  
  IQR <- Q3 - Q1
  lower <- Q1 - 1.5 * IQR #Using the IQR method
  upper <- Q3 + 1.5 * IQR
  
  outliers <- x[x < lower | x > upper] # find outliers
  return(outliers)
}

# Descriptive Statistics for Sepal Length
cat("Descriptive Statistics for Sepal Length\n\n")

# Setosa
setosa_sl <- iris$Sepal.Length[iris$Species == "setosa"]
cat("Setosa:\n")
cat("Mean:", mean(setosa_sl), "\n")
cat("Median:", median(setosa_sl), "\n")
cat("Variance:", var(setosa_sl), "\n")
cat("Standard Deviation:", sd(setosa_sl), "\n")
cat("Min:", min(setosa_sl), "\n")
cat("Lower Quartile:", quantile(setosa_sl, 0.25), "\n")
cat("Upper Quartile:", quantile(setosa_sl, 0.75), "\n")
cat("Max:", max(setosa_sl), "\n")
cat("Outliers:", find_outliers(setosa_sl), "\n\n")

# Versicolor
versicolor_sl <- iris$Sepal.Length[iris$Species == "versicolor"]
cat("Versicolor:\n")
cat("Mean:", mean(versicolor_sl), "\n")
cat("Median:", median(versicolor_sl), "\n")
cat("Variance:", var(versicolor_sl), "\n")
cat("Standard Deviation:", sd(versicolor_sl), "\n")
cat("Min:", min(versicolor_sl), "\n")
cat("Lower Quartile:", quantile(versicolor_sl, 0.25), "\n")
cat("Upper Quartile:", quantile(versicolor_sl, 0.75), "\n")
cat("Max:", max(versicolor_sl), "\n")
cat("Outliers:", find_outliers(versicolor_sl), "\n\n")

# Virginica
virginica_sl <- iris$Sepal.Length[iris$Species == "virginica"]
cat("Virginica:\n")
cat("Mean:", mean(virginica_sl), "\n")
cat("Median:", median(virginica_sl), "\n")
cat("Variance:", var(virginica_sl), "\n")
cat("Standard Deviation:", sd(virginica_sl), "\n")
cat("Min:", min(virginica_sl), "\n")
cat("Lower Quartile:", quantile(virginica_sl, 0.25), "\n")
cat("Upper Quartile:", quantile(virginica_sl, 0.75), "\n")
cat("Max:", max(virginica_sl), "\n")
cat("Outliers:", find_outliers(virginica_sl), "\n\n")

# Descriptive Statistics for Sepal Width
cat("Descriptive Statistics for Sepal Width\n\n")

# Setosa
setosa_sw <- iris$Sepal.Width[iris$Species == "setosa"]
cat("Setosa:\n")
cat("Mean:", mean(setosa_sw), "\n")
cat("Median:", median(setosa_sw), "\n")
cat("Variance:", var(setosa_sw), "\n")
cat("Standard Deviation:", sd(setosa_sw), "\n")
cat("Min:", min(setosa_sw), "\n")
cat("Lower Quartile:", quantile(setosa_sw, 0.25), "\n")
cat("Upper Quartile:", quantile(setosa_sw, 0.75), "\n")
cat("Max:", max(setosa_sw), "\n")
cat("Outliers:", find_outliers(setosa_sw), "\n\n")

# Versicolor
versicolor_sw <- iris$Sepal.Width[iris$Species == "versicolor"]
cat("Versicolor:\n")
cat("Mean:", mean(versicolor_sw), "\n")
cat("Median:", median(versicolor_sw), "\n")
cat("Variance:", var(versicolor_sw), "\n")
cat("Standard Deviation:", sd(versicolor_sw), "\n")
cat("Min:", min(versicolor_sw), "\n")
cat("Lower Quartile:", quantile(versicolor_sw, 0.25), "\n")
cat("Upper Quartile:", quantile(versicolor_sw, 0.75), "\n")
cat("Max:", max(versicolor_sw), "\n")
cat("Outliers:", find_outliers(versicolor_sw), "\n\n")

# Virginica
virginica_sw <- iris$Sepal.Width[iris$Species == "virginica"]
cat("Virginica:\n")
cat("Mean:", mean(virginica_sw), "\n")
cat("Median:", median(virginica_sw), "\n")
cat("Variance:", var(virginica_sw), "\n")
cat("Standard Deviation:", sd(virginica_sw), "\n")
cat("Min:", min(virginica_sw), "\n")
cat("Lower Quartile:", quantile(virginica_sw, 0.25), "\n")
cat("Upper Quartile:", quantile(virginica_sw, 0.75), "\n")
cat("Max:", max(virginica_sw), "\n")
cat("Outliers:", find_outliers(virginica_sw), "\n\n")

cat("Descriptive Statistics for Petal Length\n\n")

# Setosa
setosa_pl <- iris$Petal.Length[iris$Species == "setosa"]
cat("Setosa:\n")
cat("Mean:", mean(setosa_pl), "\n")
cat("Median:", median(setosa_pl), "\n")
cat("Variance:", var(setosa_pl), "\n")
cat("Standard Deviation:", sd(setosa_pl), "\n")
cat("Min:", min(setosa_pl), "\n")
cat("Lower Quartile:", quantile(setosa_pl, 0.25), "\n")
cat("Upper Quartile:", quantile(setosa_pl, 0.75), "\n")
cat("Max:", max(setosa_pl), "\n")
cat("Outliers:", find_outliers(setosa_pl), "\n\n")

# Versicolor
versicolor_pl <- iris$Petal.Length[iris$Species == "versicolor"]
cat("Versicolor:\n")
cat("Mean:", mean(versicolor_pl), "\n")
cat("Median:", median(versicolor_pl), "\n")
cat("Variance:", var(versicolor_pl), "\n")
cat("Standard Deviation:", sd(versicolor_pl), "\n")
cat("Min:", min(versicolor_pl), "\n")
cat("Lower Quartile:", quantile(versicolor_pl, 0.25), "\n")
cat("Upper Quartile:", quantile(versicolor_pl, 0.75), "\n")
cat("Max:", max(versicolor_pl), "\n")
cat("Outliers:", find_outliers(versicolor_pl), "\n\n")

# Virginica
virginica_pl <- iris$Petal.Length[iris$Species == "virginica"]
cat("Virginica:\n")
cat("Mean:", mean(virginica_pl), "\n")
cat("Median:", median(virginica_pl), "\n")
cat("Variance:", var(virginica_pl), "\n")
cat("Standard Deviation:", sd(virginica_pl), "\n")
cat("Min:", min(virginica_pl), "\n")
cat("Lower Quartile:", quantile(virginica_pl, 0.25), "\n")
cat("Upper Quartile:", quantile(virginica_pl, 0.75), "\n")
cat("Max:", max(virginica_pl), "\n")
cat("Outliers:", find_outliers(virginica_pl), "\n\n")

# Descriptive Statistics for Petal Width
cat("Descriptive Statistics for Petal Width\n\n")

# Setosa
setosa_pw <- iris$Petal.Width[iris$Species == "setosa"]
cat("Setosa:\n")
cat("Mean:", mean(setosa_pw), "\n")
cat("Median:", median(setosa_pw), "\n")
cat("Variance:", var(setosa_pw), "\n")
cat("Standard Deviation:", sd(setosa_pw), "\n")
cat("Min:", min(setosa_pw), "\n")
cat("Lower Quartile:", quantile(setosa_pw, 0.25), "\n")
cat("Upper Quartile:", quantile(setosa_pw, 0.75), "\n")
cat("Max:", max(setosa_pw), "\n")
cat("Outliers:", find_outliers(setosa_pw), "\n\n")

# Versicolor
versicolor_pw <- iris$Petal.Width[iris$Species == "versicolor"]
cat("Versicolor:\n")
cat("Mean:", mean(versicolor_pw), "\n")
cat("Median:", median(versicolor_pw), "\n")
cat("Variance:", var(versicolor_pw), "\n")
cat("Standard Deviation:", sd(versicolor_pw), "\n")
cat("Min:", min(versicolor_pw), "\n")
cat("Lower Quartile:", quantile(versicolor_pw, 0.25), "\n")
cat("Upper Quartile:", quantile(versicolor_pw, 0.75), "\n")
cat("Max:", max(versicolor_pw), "\n")
cat("Outliers:", find_outliers(versicolor_pw), "\n\n")

# Virginica
virginica_pw <- iris$Petal.Width[iris$Species == "virginica"]
cat("Virginica:\n")
cat("Mean:", mean(virginica_pw), "\n")
cat("Median:", median(virginica_pw), "\n")
cat("Variance:", var(virginica_pw), "\n")
cat("Standard Deviation:", sd(virginica_pw), "\n")
cat("Min:", min(virginica_pw), "\n")
cat("Lower Quartile:", quantile(virginica_pw, 0.25), "\n")
cat("Upper Quartile:", quantile(virginica_pw, 0.75), "\n")
cat("Max:", max(virginica_pw), "\n")
cat("Outliers:", find_outliers(virginica_pw), "\n\n")