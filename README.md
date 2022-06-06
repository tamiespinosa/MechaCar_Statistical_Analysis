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

[[1]](#1)
[[3]](#3)

<p align="center"> <img src="Resources/total_summary.png" width ="70%" alt="total_summary"> </p>
<p align="center"> Figure 3: Suspension Coils PSI Statistics</p> 

<p align="center"> <img src="Resources/lot_summary.png" width ="70%" alt="lot_summary"> </p>
<p align="center"> Figure 4: Suspension Coils PSI Statistics per Manufacturing Lot</p> 

### <a name="ttestSC"></a>T-Tests on Suspension Coils

[[1]](#1)
[[3]](#3)

<p align="center"> <img src="Resources/ttestALL.png" width ="70%" alt="ttestALL"> </p>
<p align="center"> Figure 5: Suspension Coils Sample PSI Mean vs Population Mean (T-Test)</p> 

<p align="center"> <img src="Resources/ttestperLot.png" width ="70%" alt="ttestperLot"> </p>
<p align="center"> Figure 6: Suspension Coils PSI Mean per Manufacturing Lot vs Population Mean (T-Test)</p> 

### <a name="Study"></a>Study Design: MechaCar vs Competition

## <a name="Resources"></a>Resources

<a name="1">[1]</a> [R Code Used](https://github.com/tamiespinosa/MechaCar_Statistical_Analysis/blob/5f87ef4ad2d6364b9f5d77face1fadabb13255ce/MechaCarChallenge.R)

<a name="2">[2]</a> [MechaCar Data](https://github.com/tamiespinosa/MechaCar_Statistical_Analysis/blob/5f87ef4ad2d6364b9f5d77face1fadabb13255ce/MechaCar_mpg.csv)

<a name="3">[3]</a> [Suspension Coil Data](https://github.com/tamiespinosa/MechaCar_Statistical_Analysis/blob/5f87ef4ad2d6364b9f5d77face1fadabb13255ce/Suspension_Coil.csv)


