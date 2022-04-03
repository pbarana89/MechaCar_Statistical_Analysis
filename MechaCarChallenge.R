library(dplyr)
?read.csv
getwd()
Mecha_Car<- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
?lm
lm( mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_Car) #generate multiple linear regression model

summary(lm( mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_Car)) #generate summary for multiple linear regression model

Suspension_Coil<- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)
?summarize
Total_Summary <- Suspension_Coil %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) 

data=Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) 
?t.test
Sample_Lot <- Suspension_Coil %>% sample_n(50)
t.test(log10(Sample_Lot$PSI), mu=mean(log10(Suspension_Coil$PSI)))
Lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
Lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
Lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")

t.test(log10(Lot1$PSI), mu=mean(log10(Sample_Lot$PSI)))
t.test(log10(Lot2$PSI), mu=mean(log10(Sample_Lot$PSI)))
t.test(log10(Lot3$PSI), mu=mean(log10(Sample_Lot$PSI)))
