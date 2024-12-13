# Program Name: confidence_interval.R
# Function: confidence_interval
# This function calculates the confidence interval for the population mean
# of a given dataset. 


confidence_interval <- function(data, confidence_interval) {
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