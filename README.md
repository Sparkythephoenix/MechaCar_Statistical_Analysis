# MechaCar_Statistical_Analysis

MechaCar_Statistical_Analysis
Click here to look through the R-Script: MechaCarChallenge.RScript

Purpose
The main purpose of this project was to use R to collect a summary statistics, implement and evaluate linear regression and one-sample t-tests and provide insights based on the output data.

Summary
Linear Regression to Predict MPG
MechaCar_lm

Key points of the regression model:

Variance of a non-random variance is usually 0. According to the test, intercept, vehicle_length and ground_clearance are statisticaly unlikely to rovide a random amounts of variance to linear regression model. It means that vehicle_length and ground_clearance both have a significant impact on mpg.

The p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

From our linear regression model, the adjusted r-squared value is 0.6825, which means that roughly 68% of the variablilty of our dependent variable (mpg) is explained using this linear model, which means that this model predicts mpg relatively well.

Summary Statistics on Suspension Coils
suspension_summary

lot_summary

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

As we can see, the current manufacturing data does meet the design specification for all manufacturing lots, however, the detailed summary statistics shows that the variance of Lot3 is much higher. This means that the 3rd lot does not meet the required specifications.

T-Tests on Suspension Coils
The t-test was performed on all manufacturing lots first against population mean of 1,500 pounds per square inch.

t-test_all

As we can see, the p-value is 0.06 which is greater than assumed significance level of 0.05, which means that we fail to reject null hypothesis, therefore PSI across all manufacturing lots is statistically simmilar to the population mean.

Also, the t-test was performed for each lot:

t-test_1

For the first t-test of Lot1, the p-value is equal to 1, therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar. Also, confidence interval, which show how much uncertainty there is with any particular statistic, is very small. It makes prediction of the true mean more presise.

t-test_2

The second t-test of Lot2 shows that p-value is 0.60. Considerring common signifficance level of 0.05, we fail to reject null hypothesis. The confidence interval is also very small.

t-test_3

The third t-test shows that p-value is 0.04 and smaller than signifficance level. Therefore we can reject the null hypothesis, which means that two means are statistically different. Also, confidence interval is much bigger and does not contain population mean of 1500.

Study Design: MechaCar vs Competition
As an addition, we could design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

For this study we could choose metric that would be of interest to a consumer, for example city fuel efficiency. Fuel is expensive and fuel consumption is very important for consumers while buying a new car. We would have to use linear regression with the number of metrics, such as:

City fuel efficiency as dependent variable
Horse power as independent variable
Car weight as independent variable
AWD as independent variable
For this study we would have to collect some additional data, such as car weight and horse power.

The hypotheses would be:

H0: There is no difference in fuel efficiency

H1: There is some difference in fuel efficiency
