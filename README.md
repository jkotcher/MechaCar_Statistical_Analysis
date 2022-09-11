# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

<img width="458" alt="MLR_mpg" src="https://user-images.githubusercontent.com/29406929/189545235-b1150903-66bf-4f76-bb5f-c797fe655e40.png">


A linear model was developed to predict mpg of the MechaCar prototypes.  In this Mutiple-linear Regression the variables that provided non-random variance were vehicle length and ground clearance.  The slope of the linear model is not considered to be zero because the intercept is -91 and if you were to solve for m the value of which would not be 0.  A second Multiple regression was conducted with the two variables that were most significant and the r-squared value was lower than when all the columns are used in relation to mpg.  I think that this linear model does effectively predict mpg.



## Summary Statistics on Suspension Coils


<img width="567" alt="total_summary_table" src="https://user-images.githubusercontent.com/29406929/189546880-0e4e198b-60d0-455d-95d2-2a5c6a2f15c5.png">


<img width="689" alt="lot_summary_table" src="https://user-images.githubusercontent.com/29406929/189546893-b1719cab-16b2-4431-94da-2058e4d23151.png">



When examining the PSI among all the lots in the total_summary table the variance is within the specifications of 100psi.  However, looking at each individual lot there is more variance among the PSI.  Specifically the variance of PSI in lot 3 is above the design specifications of 100psi.


## T-tests on Suspension Coils

<img width="407" alt="t_test_All_Lots" src="https://user-images.githubusercontent.com/29406929/189547502-5e1a6c7f-2a40-4b13-9a02-846e2c764475.png">


<img width="401" alt="t_test_Lot1" src="https://user-images.githubusercontent.com/29406929/189547508-fcd453cc-7d52-4574-8050-a11bf7bf67c0.png">


<img width="403" alt="t_test_Lot2" src="https://user-images.githubusercontent.com/29406929/189547521-49e0ed59-4f98-43d3-99fe-c9ff0617cd33.png">


<img width="403" alt="t_test_Lot3" src="https://user-images.githubusercontent.com/29406929/189547533-afdc4bed-428f-4a45-a81a-f81b14a6ab12.png">



According to the t-test performed on all the lots the whole sample is statistically different from the mean of 1500.  When looking at each lot individually lot 3 is also statistically different from the sample mean of 1500psi.  However, lot 1 and lot 2 are not statistically different from the mean of 1500.  Even though lot 2 has an average of 1500.2 and the p-value is 0.61, this is not enough of a difference to be considered statistically different from the population mean of 1500psi.


## Study Design: MechaCar vs Competition
To help AutosRUs with their prototypes a study of car metrics will be described to compare MechaCars to the competition.  The metrics that will be looked at for this study will be cost, city and highway fuel efficiency and safety rating.  These metrics are the ones that will be studied because when it comes to car purchasing there is often a lot of thought given to the overall cost, how well does the car travel in a city and on the highway and how safe a car is.  The null hypothesis in this case would be that the MechaCars perform better than the competition and the alternative is the they don't perform better than the competition.  One statistical test that could be performed for this case is a two sample t-test or a one sample t-test since we would be comparing MechaCars to a population of other car brands.  Some data that would useful in this case is average cost of the car compared to the average cost of other brands.  Other data that would be needed given the metrics is average mpg for both cities and highways as well as the average safety rating.  In addition having other summary statistics such as median and standard deviation and variance also would be helpful data points to compare MechaCars to the competition.
