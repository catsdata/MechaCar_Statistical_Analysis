# Deliverable 1 -----------------------------------------------------------

# Use the library() function to load the dplyr package

library(dplyr)


# Import and read in the MechaCar_mpg.csv file as a dataframe

mecha_mpg <- read.csv(file='resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)


# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), 
# and add the dataframe you created in Step 4 as the data parameter

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg)


# Using the summary() function, determine the p-value and the r-squared value for the linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg))


# Deliverable 2 -----------------------------------------------------------

# Import and read in the Suspension_Coil.csv file as a table.

sus_coil <- read.csv(file='resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)


# Write an RScript that creates a total_summary dataframe using the summarize() function to get the:
# mean, median, variance, and standard deviation of the suspension coil's PSI column.

total_summary <- sus_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep') 


# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each 
# manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column

lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep') 


# Deliverable 3 -----------------------------------------------------------

# write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different 
# from the population mean of 1,500 pounds per square inch

t.test(sus_coil$PSI, mu=1500)


# write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument 
# to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch

lot1 <- subset(sus_coil, Manufacturing_Lot == "Lot1")
t.test(lot1$PSI, mu=1500)

lot2 <- subset(sus_coil, Manufacturing_Lot == "Lot2")
t.test(lot2$PSI, mu=1500)

lot3 <- subset(sus_coil, Manufacturing_Lot == "Lot3")
t.test(lot3$PSI, mu=1500)

