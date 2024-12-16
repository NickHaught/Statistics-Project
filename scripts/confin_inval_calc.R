

### calculate the confidence integrals for the petal lengths 3 flowers
# "3. Use the R function to estimate the confidence intervals
# of the petal length of all three species."

# We will start with a confidence interval of 95%,
#   meaning that (I think) that the length of the flower will
#   have a 95% chance of being in the returned interval

# Load the iris dataset
data(iris)

# Subset the data by species for sepal length
setosa_sepal <- iris$Sepal.Length[iris$Species == "setosa"]
versicolor_sepal <- iris$Sepal.Length[iris$Species == "versicolor"]
virginica_sepal <- iris$Sepal.Length[iris$Species == "virginica"]

# Function to calculate descriptive statistics
calculate_stats <- function(data, species_name) {
  list(
    Species = species_name,
    Mean = mean(data),
    Median = median(data),
    Variance = var(data),
    Std_Dev = sd(data),
    Min = min(data),
    Lower_Quartile = quantile(data, 0.25),
    Upper_Quartile = quantile(data, 0.75),
    Max = max(data),
    Outliers = paste(data[data < (quantile(data, 0.25) - 1.5 * IQR(data)) |
                            data > (quantile(data, 0.75) + 1.5 * IQR(data))], collapse = ", ")
  )
}

# Calculate statistics for each species
setosa_stats <- calculate_stats(setosa_sepal, "Setosa")
versicolor_stats <- calculate_stats(versicolor_sepal, "Versicolor")
virginica_stats <- calculate_stats(virginica_sepal, "Virginica")

# Combine into a data frame
sepal_length_table <- data.frame(
  rbind(setosa_stats, versicolor_stats, virginica_stats)
)

# Print the table
print(sepal_length_table)
