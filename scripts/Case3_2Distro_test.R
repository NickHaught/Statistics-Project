
## Here I will attempt to make code for the Case III test from mod 11
## Equation(s) are on slide and in note sheet for reference
## I will assume the true variances are unequal because flowers

## OBJECTIVE: Write your own R script to carry out hypothesis tests 
#             on comparison of two population means
## Looks like this will be a t distribution
## And we are comparing means


#- H0: Virg  = Vers,	H1: Virg > Vers  -->   H0: u1 = u2, H1: u1 > u2 
#- u1 = mean Virginica Petal length, u2 = mean Versicolor Petal length 
#- Sample size: n1 = n2 = 50, sample mean: calcable, Sample variance: calcable 

## To use equation, we need sampleMean 1&2, and VarianceMean 1&2, and sample size
## sample sizes should be 50

## STEP 1: Load data :D
data(iris)
Vir_PLens = subset(iris, Species == "virginica")$Petal.Length
Ver_PLens = subset(iris, Species == "versicolor")$Petal.Length
## last 2 grab the data arrays themselves 

## STEP 2: Get our starting variables
n1 = length(Vir_PLens)  ## number of samples
n2 = length(Ver_PLens)

Xbar1 = sum(Vir_PLens) / n1 ## sum up all sample values, divide by num samples
Xbar2 = sum(Ver_PLens) / n2 ## Should be how we normally get the mean

## STEP 2.5: turns out sample variance is a tad trickier to calculate
s1 = 0                 ## create empty s1
for (xi in Vir_PLens) {      ## get current sample - sample mean
  s1 = s1 + ((xi - Xbar1)^2) ## Then square that and add to s1
}
s1 = s1 / (n1-1)             ## Then finally divide by num samples-1

## again for s2
s2 = 0                 ## create empty s1
for (xi in Ver_PLens) {      ## get current sample - sample mean
  s2 = s2 + ((xi - Xbar2)^2) ## Then square that and add to s1
}
s2 = s2 / (n2-1)             ## Then finally divide by num samples-1

######### STEP 3: begin the Ty distribution equation'
### Step 3.1: get numerator
Tnumerator = (Xbar1 - Xbar2) - ()
