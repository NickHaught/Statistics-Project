

data(iris)
setosa_petal <- iris$Petal.Length[iris$Species == "setosa"]
versicolor_petal <- iris$Petal.Length[iris$Species == "versicolor"]
virginica_petal <- iris$Petal.Length[iris$Species == "virginica"]

setosa_variance <- var(setosa_petal)
versicolor_variance <- var(versicolor_petal)
virginica_variance <- var(virginica_petal)

print(setosa_variance)
print(versicolor_variance)
print(virginica_variance)

print(var.test(
    iris$Petal.Length[iris$Species == "versicolor"],iris$Petal.Length[iris$Species == "virginica"]
))
print("------------------ Custom F test below ------------------")

f_test <- function(group1, group2, alpha = 0.05) {
  
  # Calculate variance and size of groups
  var1 <- var(group1)
  var2 <- var(group2)
  n1 <- length(group1)
  n2 <- length(group2)
  
  # F-statistic
  if (var1 > var2) {
    F_obs <- var1 / var2
    df1 <- n1 - 1  # Degrees of freedom group1
    df2 <- n2 - 1  # Degrees of freedom group2
  } else {
    F_obs <- var2 / var1
    df1 <- n2 - 1  # Degrees of freedom group2
    df2 <- n1 - 1  # Degrees of freedom group1
  }
  
  # Calculate p-value for the two-tailed test [MODULE 11]
  p_value <- 2 * min(1 - pf(F_obs, df1, df2), pf(F_obs, df1, df2))
  
  if (p_value <= alpha) {
    decision <- "Reject H0: The variances are different"
  } else {
    decision <- "Fail to Reject H0: The variances are equal"
  }

  return(list(
    F_statistic = F_obs,
    p_value = p_value,
    decision = decision
  ))
}

f_test_result <- f_test(virginica_petal,versicolor_petal,   alpha = 0.05)
print(f_test_result)