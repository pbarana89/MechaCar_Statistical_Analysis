# MechaCar_Statistical_Analysis
- The overview of this analysis was to review the production data for insights that may help the manufacturing team. Using a mixture of CSVs and R I was able to look further into the data and run analysis to help them further understand the test results. 

## Linear Regression to Predict MPG

![](https://github.com/pbarana89/MechaCar_Statistical_Analysis/blob/main/LR_Summary.PNG)
- The information shows that vehicle length and ground clearance are statistically unlikely to provide random amounts of variance to the linear model. The p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero. The linear model with such a low p-value also shows that it does predict the mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils

![](https://github.com/pbarana89/MechaCar_Statistical_Analysis/blob/main/Total_Summary.PNG)

![](https://github.com/pbarana89/MechaCar_Statistical_Analysis/blob/main/Lot_Summary.PNG)


- The design on the suspension coils for the MechaCar show interesting data. Both the first and second lot have variances that are rather small with Lot 1 being 0.97 and Lot 2 being 7.46. However the third lot shows a variance of 170.28. This would show that the first and second lot meet the specifications while the 3rd fails the 100 pounds per square inch requirement.

## T-Tests on Suspension Coils

![](https://github.com/pbarana89/MechaCar_Statistical_Analysis/blob/main/Sample_ttest.PNG)


- First using a sample population with the data we are not able to reject the null hypothesis as the p-value of 0.8623 greater than 0.05.

![](https://github.com/pbarana89/MechaCar_Statistical_Analysis/blob/main/Sample_Lot1.PNG)

- Second using the psi from Lot 1 with the sample population data we are able to reject the null hypothesis as the p-value of 7.07 * 10-09 is less than 0.05. 

![](https://github.com/pbarana89/MechaCar_Statistical_Analysis/blob/main/Sample_Lot2.PNG)

- Third using the psi from Lot 2 with the sample population data we are able to reject the null hypothesis as the p-value of 0.0037 is less than 0.05. 

![](https://github.com/pbarana89/MechaCar_Statistical_Analysis/blob/main/Sample_Lot3.PNG)

- Finally using the psi from Lot 3 with the sample population data we are not able to reject the null hypothesis as the p-value of 0.11 is greater than 0.05. 

## Study Design: MechaCar vs Competition

- The next step would be to create a design to see how the MechaCar performs against the competition. As we would want to reach the largest audience possible consumers would likely be interested in seeing fuel efficiency, safety, while also wanting to know about horsepower. A possible null hypothesis we could test would be for example, mpg has no effect on horsepower. We could do a simple linear regression to test this null hypothesis and the data would be needed is the mpg and horsepower for the MechaCar and our competitors to complete this process.
