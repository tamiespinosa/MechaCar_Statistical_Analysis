library(dplyr)

MechaCar <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import MechaCar_mpg dataset

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar)) #generate summary statistics

Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import Suspension_Coil dataset

total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create a summary table for the PSI column

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot)  %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create a summary table for the PSI column with data grouped by ManufacturingLot column
