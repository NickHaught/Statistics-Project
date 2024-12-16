
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
  
  # Confidence interval
  F_upper <- qf(1 - alpha / 2, df1, df2)  
  F_lower <- qf(alpha / 2, df1, df2)      
  coni_lower <- F_obs / F_upper             
  coni_upper <- F_obs / F_lower      
  
  if (p_value <= alpha) {
    test <- "Reject H_0: There is SUFFICIENT evidence to support that the variances are different."
  } else {
    test <- "Fail to Reject H_0: There is INSUFFICIENT evidence to support that the variances are different."
  }

  return(list(
    F_statistic = F_obs,
    p_value = p_value,
    test = test,
    conifidence_lower = coni_lower,
    conifidence_upper = coni_upper
  ))
}

data(iris)
setosa_petal <- iris$Petal.Length[iris$Species == "setosa"]
versicolor_petal <- iris$Petal.Length[iris$Species == "versicolor"]
virginica_petal <- iris$Petal.Length[iris$Species == "virginica"]

print("---------------Test 1---------------")
f_test_result <- f_test(virginica_petal,versicolor_petal,   alpha = 0.05)
print(f_test_result)
print("---------------Test 2---------------")
f_test_result <- f_test(setosa_petal,versicolor_petal,   alpha = 0.05)
print(f_test_result)