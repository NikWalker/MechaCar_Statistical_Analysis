#load packages
library(dplyr)
library(tidyverse)

#DELIVERABLE 1

df_mecha_mpg <- read.csv('MechaCar_mpg.csv')
head(df_mecha_mpg)

#perform linear regression 
?lm()
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, df_mecha_mpg)

#determine the p-value and the r-squared value using summary function

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, df_mecha_mpg))


#DELEVERABLE 2

suspension_table <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(suspension_table)

#create total summary df on psi column
?summarise
total_summary_psi <- suspension_table %>% summarise(mean= mean(PSI), median= median(PSI), variance= var(PSI), sd= sd(PSI), .groups= 'keep')
total_summary_psi

#group by manufacturing lot and get lot summary of psi column
manufacturing_lot_summ <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarise(mean= mean(PSI), median= median(PSI), variance= var(PSI), sd= sd(PSI), .groups= 'keep')

#