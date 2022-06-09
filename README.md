# MechaCar_Statistical_Analysis

## Table of Contents
- [Project Overview](#OverviewProject)
- [Results and Summary](#Results)
  * [Linear Regression to Predict MPG](#LR2MPG)
  * [Summary Statistics on Suspension Coils](#SummStatSC)
  * [T-Test on Suspension Coils](#ttestSC)
  * [Study Design: MechaCar vs Competition](#Study)
- [Summary](#Summary)
- [Resources](#Resources)


## <a name="OverviewProject"></a>Project Overview

A fictional company, AutosRUS, wanted data analysis performed in theit newest prototype, the MechaCar. We performed a linear regression analysis to see which variables influence the milleage per gallon (MPG) the most. Additionally, we looked into the suspension coils data and check their performance for each manufacturing lot. We used R and R Studio to perform this analysis [[1]](#1), using data for the MechaCar MPG performance and suspension coils data [[2]](#2),[[3]](#3).

Finally we will propose a statistical study to compare the MechaCar against other manufacturers. 

## <a name="Results"></a>Results and Summary

### <a name="LR2MPG"></a>Linear Regression to Predict MPG

#### Results

Using R code [[1]](#1) and the MechaCar Data [[2]](#2) we created a linear regression equation as follows: 

  mpg = 6.267e+00 (vehicle_length) + 1.245e-03(vehicle_weight) + 6.877e-02(spoiler_angle) + 3.546e+00 (ground_clearance) - 3.411e+00(AWD) - 1.040e+02  

<p align="center"> <img src="Resources/MultiLinear_Model.png" width ="70%" alt="MultiLinear_Model"> </p>
<p align="center"> Figure 1: Multi Variable Linear Regression Model</p> 

We used the linear regresson model equation to find a statistical summary  for the model. 

<p align="center"> <img src="Resources/SummaryStats_MLRM.png" width ="70%" alt="SummaryStats_MLRM"> </p>
<p align="center"> Figure 2: Summary Statistics on Linear Regression Model</p> 

#### Summary

Using the statistical summary we determined that the variables that provided non random amount of variance were vehicle_length, ground_clearance and the intercept. For these variables the p values were less than our statistical significance level, 0.05, see Figure 2. For the other variables, (vehicle_weight, spoiler_angle, and AWD), we failed to reject that they did not provide variation to the mpg results beyond random chance. Since the intercept proved to be significant, this let us know that either there are other variables not considered that would provide variation to our model or that other variables such as vehicle_weight need scaling or transforming in order to help predict the mpg more. Normally, we would think that the vehicle weight would be a contributing factor to the miles per gallon used by said vehicle, so we tend to think that scaling or transforming would be needed in this case. 

The overall p value for our linear regression model was 5.35e-11, see Figure 2. If our p value was greater than 0.05 we would say that the slope of our model is zero (flat line) or in other words that the independent variables have no significant linear relationship with the mpg results. Yet, since our p value is less than 0.05 we can confirm that the slope is not equal to zero and therefore our independent variables do have a linear relationship the mpg results. 

Overall we can say that our linear regression model does predict the mpg results for the MechaCar prototype. We say this because the r-squared value is 0.7149, meaning that 71.5% of the variability of the mpg variable can be explained with the model created. The closer this value is to 1, the more accurately the model predicts the real data points collected and 0.7149 is closer to 1 than it is to 0. 

### <a name="SummStatSC"></a>Summary Statistics on Suspension Coils

#### Results

Using R code [[1]](#1) and the suspension coil data [[3]](#3), which includes the vehicle ID, the lot in which it was manufactured and the suspension coils PSI, we found the statistical summary for the suspension coils PSI for all MechaCars built. 

<p align="center"> <img src="Resources/total_summary.png" width ="70%" alt="total_summary"> </p>
<p align="center"> Figure 3: Suspension Coils PSI Statistics</p> 

Additionally we grouped the vehicles by the lot in which they were manufactured, and then found the summary statistics per lot. 

<p align="center"> <img src="Resources/lot_summary.png" width ="70%" alt="lot_summary"> </p>
<p align="center"> Figure 4: Suspension Coils PSI Statistics per Manufacturing Lot</p> 

#### Summary

The manufacturing requirement for suspension coils requires for the variation to stay below 100 psi. When looking at the variation for all samples, see Figure 3, this requirement is met yet the variation seems to be in the higher side. This is better explained when we dig deeper into the performance of the suspension coils per the lot where there were manufactured. Lot 1 and Lot 2 have variances below 8 psi, very small variances. Lot 3 in the other hand exceeds the acceptable variance, with a variance value of 170.3 psi, see Figure 4. This is driving the overall variance value up. Addressing this manufacturing non conformance in Lot 3 would better the overall variance results for all AutoRUS suspension coils. 

### <a name="ttestSC"></a>T-Tests on Suspension Coils

#### Results

Following the variance results for suspension coils, we ran a T-Test on the suspension coil data as a whole. We compared it to a fiven population mean of 1,500 PSI. We used R code [[1]](#1) and the suspension coil data [[3]](#3). 

<p align="center"> <img src="Resources/ttestALL.png" width ="70%" alt="ttestALL"> </p>
<p align="center"> Figure 5: Suspension Coils Sample PSI Mean vs Population Mean (T-Test)</p> 

Based on the difference in variance for each manufacturing lot, we ran a T-Test for the cars manufactured in each manufacturing lot. We first created subsets of the data named Lot1, Lot2 and Lot3.  

<p align="center"> <img src="Resources/ttestperLot.png" width ="70%" alt="ttestperLot"> </p>
<p align="center"> Figure 6: Suspension Coils PSI Mean per Manufacturing Lot vs Population Mean (T-Test)</p> 

#### Summary

The T-Tests performed compared the mean of the suspension coil's PSI measurement against the population's mean of 1,500 psi. We ran the same test on the subsets of data for each manufacturing lot. If our results had p values of less than 0.05, that would mean that the means of the samples and the mean of the population are statistically different. Conversely, if the p values are greater than 0.05 that means that the difference between the two means is statistically insignificant. The T-Test also gives the 95% confidence interval, so it gives us the range that if the mean of the second subset of values falls in (in our case if the population mean falls in this range), it wouldn't be statistically different than the sample mean. In Figure 5 we find that the mean of the sample data given is not statistically different than that of the population. In Figure 6, we see that both Lot 1 and Lot 2's have p values are greater than 0.05, so they are not statistically different than the population mean and the population mean falls inside their 95% confidence interval. With Lot 1 we notice that there is no difference at all between the means, and that results in a p value of 1.  Yet, Lot 3's p value is under 0.05 and therefore it is statistically different than that of the population mean. The result of the suspension coils's psi mean being statistically different than the population mean and our observation that Lot 3 has the greatest variance in its values which makes it non compliant with industry standards, points at a need to observe and change some of the manufacturing practices in Lot 3.   

### <a name="Study"></a>Study Design: MechaCar vs Competition

AutosRUS will need to prove how it's MechaCar compares to that of the competition. In order to do so, the car will need to be tested and compared to that of other manufacturers. For this study we will be assuming that the MechaCar is a Sedan and that we want to create the most reliable car. 

#### Metric to be tested

An important measure for a car is the car's reliability, or how long will the car last. We will need to test the wear and tear of the car components.

#### Null hypothesis and alternative hypothesis

In our null hypothesis we would say that the reliability score for our car is the same as the mean score of all the other cars in it's category. 
Our alternative hypothesis is that the design of our car is good, and therefore its reliability score will be in the top of the cars in its category.

#### Statistical test to test the hypothesis and Data needed for statistical test

Certain mechanical and electrical components, such as the motor, ignition, gear box should have fatigue tests performed to them to see after how many cycles of use would the components have a mechanical failure. The life cycle's of these components would be compared to the mean life cycle's of the competitor's components through a T-Test. If we were certify that our car design would outlast most other car's, we would get life cycles that are longer than the mean of the life cycles of other cars, and the difference would be statistically significant (p values would be greater than 0.05).


## <a name="Resources"></a>Resources

<a name="1">[1]</a> [R Code Used](https://github.com/tamiespinosa/MechaCar_Statistical_Analysis/blob/5f87ef4ad2d6364b9f5d77face1fadabb13255ce/MechaCarChallenge.R)
Is
<a name="2">[2]</a> [MechaCar Data](https://github.com/tamiespinosa/MechaCar_Statistical_Analysis/blob/5f87ef4ad2d6364b9f5d77face1fadabb13255ce/MechaCar_mpg.csv)

<a name="3">[3]</a> [Suspension Coil Data](https://github.com/tamiespinosa/MechaCar_Statistical_Analysis/blob/5f87ef4ad2d6364b9f5d77face1fadabb13255ce/Suspension_Coil.csv)


