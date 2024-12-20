# Program Name: Case2.R
# This script performs a pooled t-test (Case II) to compare the means 
# of two groups when their variances are equal.

## STEP 1: Load data :D
data(iris)
Vir_PLens = subset(iris, Species == "virginica")$Petal.Length
Ver_PLens = subset(iris, Species == "versicolor")$Petal.Length
## last 2 grab the data arrays themselves 
#### STEP 2: Get our starting variables
n1 = length(Vir_PLens)  ## number of samples
n2 = length(Ver_PLens)
Xbar1 = sum(Vir_PLens) / n1 ## sum up all sample values, divide by num samples
Xbar2 = sum(Ver_PLens) / n2 ## Should be how we normally get the mean
#### STEP 2.5: turns out sample variance is a tad trickier to calculate
s1 = 0.0                     ## create empty s1
for (xi in Vir_PLens) {      ## get current sample - sample mean
  s1 = s1 + ((xi - Xbar1)^2)} ## Then square that and add to s1
s1 = s1 / (n1-1)             ## Then finally divide by num samples-1
#### again for s2
s2 = 0.0                     ## create empty s2
for (xi in Ver_PLens) {      ## get current sample - sample mean
  s2 = s2 + ((xi - Xbar2)^2)} ## Then square that and add to s2
s2 = s2 / (n2-1)             ## Then finally divide by num samples-1

##### now things deviate 
######## STEP 3: CALCULATE POOLED VARIANCE  (process on page 343)
SPnumerator = (n1 -1)*(s1) + (n2-1)*(s2)
SPdenominator = (n1 + n2) - 2
Sp = SPnumerator / SPdenominator

#### STEP 4: Pooled T test statistic
testNum = (Xbar1 - Xbar2)
testDenom = sqrt(Sp*((1/n1) + (1/n2)))
Ttester = testNum / testDenom

### STEP 5: Y degree
Ydeg = n1 + n2 -2   ## from page 344 Milton

### STEP 6 get critical (should be same as other cases)
t_critical = qt(0.05, Ydeg, lower.tail = FALSE) 
##                                This works for testing values on pg 349

p_value <- pt(Ttester, df = Ydeg, lower.tail = FALSE)

# dont forget to print results
cat("T-Statistic:", Ttester, "\n")
cat("Degrees of Freedom:", Ydeg, "\n")
cat("Critical Value (Right Tail, alpha = 0.05):", t_critical, "\n")
cat("P-value:", p_value, "\n")

### LAST STEP
### Compare p-value to alpha
alpha <- 0.05  # Significance level
if (p_value < alpha) {
  print("Reject H0, because there is sufficient evidence to support the alternative hypothesis.")
} else {
  print("Fail to Reject H0, because there is insufficient evidence to support the alternative hypothesis.")
}


