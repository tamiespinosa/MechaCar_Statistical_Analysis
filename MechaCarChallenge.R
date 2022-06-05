library(dplyr)

#Deliverable 1

MechaCar <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import MechaCar_mpg dataset

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar)) #generate summary statistics

#Deliverable 2

Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import Suspension_Coil dataset

total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create a summary table for the PSI column

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot)  %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create a summary table for the PSI column with data grouped by ManufacturingLot column

#Deliverable 3

t.test(Suspension_Coil$PSI,mu=1500) #comparing sample vs population means

Lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1") #creating data subset for Lot1
Lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2") #creating data subset for Lot2
Lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3") #creating data subset for Lot3

t.test(Lot1$PSI,mu=1500) #comparing subset Lot1 vs population means 
t.test(Lot2$PSI,mu=1500) #comparing subset Lot2 vs population means 
t.test(Lot3$PSI,mu=1500) #comparing subset Lot3 vs population means 