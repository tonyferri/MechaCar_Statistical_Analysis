# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  * Vehicle Length (2.60e-12), Ground Clearance (5.21e-08) and the intercept (5.08e-08)
* Is the slope of the linear model considered to be zero? Why or why not?
  * Multiple R-squared value is 0.7149
  * p-value is 5.35e-11
  * Since the p-value is much smaller than the significance level of 0.05%, we can state that the slope is not zero (and also reject the null hypothesis). 
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  * Since only two of the six variables are considered significant, this would not effectively predict mpg

[MPG Linear Regression](https://github.com/tonyferri/MechaCar_Statistical_Analysis/blob/main/Resources/mpg%20linear%20regression%20del%201.png);

## Summary Statistics on Suspension Coils
* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
  * If measured only in total, this criteria is met due to the overall variance being equal to 62.29 PSI.
  * If measured individually, Lot 3 does not meet the criteria with a PSI variance of 170.29. 

[Total Summary](https://github.com/tonyferri/MechaCar_Statistical_Analysis/blob/main/Resources/total%20summary%20del%202.png);

[Lot Summary](https://github.com/tonyferri/MechaCar_Statistical_Analysis/blob/main/Resources/lot%20summary%20del%202.png);

## T-Tests on Suspension Coils
* The p-value for the t-Test across all lots was 0.05
* The p-value for the t-Test across lot 1 was 0.21
* The p-value for the t-Test across lot 2 was 0.29
* The p-value for the t-Test across lot 3 was 0.02
* The t-tests for all lots and Lot 3 showed a stronger correlation than those for Lots 1 & 2

[p-test total](https://github.com/tonyferri/MechaCar_Statistical_Analysis/blob/main/Resources/p-test%20total.png);

[p-test lot1](https://github.com/tonyferri/MechaCar_Statistical_Analysis/blob/main/Resources/p-test%20lot1.png);

[p-test lot2](https://github.com/tonyferri/MechaCar_Statistical_Analysis/blob/main/Resources/p-test%20lot2.png);

[p-test lot3](https://github.com/tonyferri/MechaCar_Statistical_Analysis/blob/main/Resources/p-test%20lot3.png);

## Study Design: MechaCar vs Competition
* Proposed method for determining the performance of the MechaCar versus the competition:
  * Metrics to be tested:
    * Vehicle Cost
    * mpg (city)
    * mpg (highway)
    * Safety Rating
  * Null Hypothesis: the MechaCar performs roughly the same as the competition
  * Create a Two-Sample t-Test for each of the categories listed above