
## Here I will attempt to make code for the Case III test from mod 11
## Equation(s) are on slide and in note sheet for reference
## I will assume the true variances are unequal because flowers

## Looks like this will be a t distribution
## And we are comparing means


#- H0: Virg  = Vers,	H1: Virg > Vers  -->   H0: u1 = u2, H1: u1 > u2 
#- u1 = mean Virginica Petal length, u2 = mean Versicolor Petal length 
#- Sample size: n1 = n2 = 50, sample mean: calcable, Sample variance: calcable 

## To use equation, we need sampleMean 1&2, and VarianceMean 1&2, and sample size
## sample sizes should be 50

## STEP 1: Load data :D
data(iris)
Virgin_PLens <- 
Versic_PLens = 
  Versicolor = subset(iris, Species == "versicolor")$Petal.Length,  
## P-Length for Iris Versicolor
Virginica = subset(iris, Species == "virginica")$Petal.Length