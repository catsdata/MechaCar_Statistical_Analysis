# MechaCar Statistical Analysis

<details><summary>Table of Contents</summary>
<p>

1. [Overview](https://github.com/catsdata/MechaCar_Statistical_Analysis#overview)
2. [Resources](https://github.com/catsdata/MechaCar_Statistical_Analysis#resources)
3. [Results](https://github.com/catsdata/MechaCar_Statistical_Analysis#results)
    - [Linear Regression](https://github.com/catsdata/MechaCar_Statistical_Analysis#linear-regression-to-predict-mpg)
    - [Summary Statistics](https://github.com/catsdata/MechaCar_Statistical_Analysis#summary-statistics-on-suspension-coils)
    - [T-Tests](https://github.com/catsdata/MechaCar_Statistical_Analysis#t-tests-on-suspension-coils)
    - [Study Design](https://github.com/catsdata/MechaCar_Statistical_Analysis#study-design-mechacar-vs-competition)
4. [Summary](https://github.com/catsdata/MechaCar_Statistical_Analysis#summary)

</p>
</details>

## Overview

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has requested data analytics for insights that may help the manufacturing team.

Requests:  
1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 


## Resources

- Data Sources: 
    - [MPG data](https://github.com/catsdata/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv)
    - [Suspension Data](https://github.com/catsdata/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv)
- Software:  
    - RStudio
    - R 4.1.3


## Results

### Linear Regression to Predict MPG

Performed a linear regression analysis to determine if we can predict the mpg of the MechaCar prototypes.  To do so, we loaded in the 'dplyr' library, imported our csv data, performed the linear regression and printed a summary of the statistics.

![Code](https://github.com/catsdata/MechaCar_Statistical_Analysis/blob/main/Images/Del1_1.PNG)

![Linear Regression](https://github.com/catsdata/MechaCar_Statistical_Analysis/blob/main/Images/Del1_2.PNG)

![Summary](https://github.com/catsdata/MechaCar_Statistical_Analysis/blob/main/Images/Del1_3.PNG)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

Assuming our p-value is at a standard 0.05, the following variables do not provide random variance due to a much lower, and near zero, p-value: Vehicle Length (2.60e-12) and Ground Clearance (5.21e-08).  These variables seem to have a significant impact on mpg.

**Is the slope of the linear model considered to be zero? Why or why not?**

The slope of our linear modeal is not zero.  Our overall p-value of 5.35e-11 allows us to reject the null hypothesis.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

Our R-squared of 0.7149 indicates a strong linear relationship; meaning this model will assist in predicting the mpg of MechaCar prototypes.


### Summary Statistics on Suspension Coils

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

![Overall](https://github.com/catsdata/MechaCar_Statistical_Analysis/blob/main/Images/Del2_2.PNG)

As seen in our Manufacturing Lot overall summary above, our variance in the PSI is 62.29356, which is well below our specs to be less than 100 lbs per square inch.

![Lots](https://github.com/catsdata/MechaCar_Statistical_Analysis/blob/main/Images/Del2_1.PNG)

However, when we break out our stats on each Manufacturing Lot, we see that Lot 3 has far exceeded our threshold with 170.2861224; 70 lbs over our 100 spec.   
Lots 1 and 2 are both within spec with minimal variance.

### T-Tests on Suspension Coils

To further analyze the stats on our Manufacturing Lots, we ran t-tests for the entire production and individual lots.  

![Overall](https://github.com/catsdata/MechaCar_Statistical_Analysis/blob/main/Images/Del3_2.PNG)

Over the entire production, we see our p-value is 0.06028, which puts us within the standard 95% confidence level.  However, this is not absolute, since we know that the variance of Lot 3 is off as seen above.   So we break down the t-tests on each lot.

![Lot1](https://github.com/catsdata/MechaCar_Statistical_Analysis/blob/main/Images/Del3_3.PNG)
![Lot2](https://github.com/catsdata/MechaCar_Statistical_Analysis/blob/main/Images/Del3_4.PNG)

Lot 1 and Lot 2 both have p-values above 0.05, 1 and 0.6072 respecively, and support our overall production t-test.

![Lot3](https://github.com/catsdata/MechaCar_Statistical_Analysis/blob/main/Images/Del3_5.PNG)

For Lot 3, as suspected, the p-value is under our threshold at 0.04168, which matches our concern with the variance on the PSI specs.

### Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions (Use the statistical cheat sheet below to help you in your statistical design):
- What metric or metrics are you going to test?
- What is the null hypothesis or alternative hypothesis?
- What statistical test would you use to test the hypothesis? And why?
- What data is needed to run the statistical test?

You will earn a perfect score for Deliverable 4 by completing all requirements below:

The statistical study design has the following:
- A metric to be tested is mentioned (5 pt)
- A null hypothesis or an alternative hypothesis is described (5 pt)
- A statistical test is described to test the hypothesis (5 pt)
- The data for the statistical test is described (5 pt)

## Summary

