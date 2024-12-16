# Program Name: confidence_interval.R
# Function: confidence_interval
# This function calculates the confidence interval for the population mean
# of a given dataset. 

confidence_interval <- function(data, confidence_level) {
  n <- length(data)
  mean <- mean(data) # Calculate sample mean
  std_error <- sd(data) / sqrt(n)  # Calculate the standard error of the mean
  
  # Determine the critical value and margin of error
  if (n >= 30) {
    error_margin <- qnorm((1 + confidence_level) / 2) * std_error
  } else {
    error_margin <- qt((1 + confidence_level) / 2, df = n - 1) * std_error
  }
  
  # Calculate the lower and upper bounds
  lower <- mean - error_margin
  upper <- mean + error_margin
  return(list(lower = lower, mean = mean, upper = upper))
}

# STEP 1: LOAD DATA
data(iris)

# STEP 2: CREATE SOME VARS
# for convenience I will put some easily tweak-able values here
wanted_confidence <- 0.95  # interval we want

Setosa_data = subset(iris, Species     == "setosa")$Petal.Length   
Versicolor_data = subset(iris, Species == "versicolor")$Petal.Length  
Virginica_data = subset(iris, Species == "virginica")$Petal.Length

# STEP 3: FEED INPUTS TO FUNCTION     ## data and interval in, len interval out
Setosa_interval = confidence_interval(data = Setosa_data, 
                                      confidence_level = wanted_confidence)
Versicolor_interval = confidence_interval(data = Versicolor_data, 
                                          confidence_level = wanted_confidence)
Virginica_interval = confidence_interval(data = Virginica_data, 
                                         confidence_level = wanted_confidence)

# Print confidence intervals
print("Confidence interval -> setosa petal length:")
print(paste("  Mean:", Setosa_interval$mean))
print(paste("  Lower Bound:", Setosa_interval$lower))
print(paste("  Upper Bound:", Setosa_interval$upper))

print("Confidence interval -> versicolor petal length:")
print(paste("  Mean:", Versicolor_interval$mean))
print(paste("  Lower Bound:", Versicolor_interval$lower))
print(paste("  Upper Bound:", Versicolor_interval$upper))

print("Confidence interval -> virginica petal length:")
print(paste("  Mean:", Virginica_interval$mean))
print(paste("  Lower Bound:", Virginica_interval$lower))
print(paste("  Upper Bound:", Virginica_interval$upper))