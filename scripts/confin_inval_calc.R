

### calculate the confidence integrals for the petal lengths 3 flowers
# "3. Use the R function to estimate the confidence intervals
# of the petal length of all three species."

# We will start with a confidence interval of 95%,
#   meaning that (I think) that the length of the flower will
#   have a 95% chance of being in the returned interval

# STEP 1: LOAD DATA
data(iris)

# STEP 2: LOAD FUNCTION
source("confidence_interval.R") 
## This should grab the function and make it usable here (like import)
## Note this only works if that file is in the same folder/working directory

# STEP 3: CREATE SOME VARS
# for convenience I will put some easily tweak-able values here
wanted_confidence <- 0.95  # interval we want

Setosa_data = subset(iris, Species     == "setosa")$Petal.Length   
Versicolor_data = subset(iris, Species == "versicolor")$Petal.Length  
Virginica_data = subset(iris, Species == "virginica")$Petal.Length


# STEP 4: FEED INPUTS TO FUNCTION     ## data and interval in, len interval out
Setosa_interval = confidence_interval(data = Setosa_data, 
                                      confidence_level = wanted_confidence)
Versicolor_interval = confidence_interval(data = Versicolor_data, 
                                          confidence_level = wanted_confidence)
Virginica_interval = confidence_interval(data = Virginica_data, 
                                         confidence_level = wanted_confidence)
