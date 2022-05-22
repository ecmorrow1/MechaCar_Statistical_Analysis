mpg_results <- read.csv("MechaCar_mpg.csv")

library(dplyr)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mpg_results)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mpg_results))


# Deliverable 2 - Summary Statistics
library(tidyverse)
coil <- read.csv("Suspension_Coil.csv")

total_summary <- summarize(coil,Mean = mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI))

lot_groups <- group_by(coil,Manufacturing_Lot)
lot_summary <- summarise(lot_groups,Mean = mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI))

# Deliverable 3 - Technical Analysis
t.test(coil['PSI'],mu=1500)

t.test(subset(coil,Manufacturing_Lot=="Lot1")["PSI"],mu=1500)
t.test(subset(coil,Manufacturing_Lot=="Lot2")['PSI'],mu=1500)
t.test(subset(coil,Manufacturing_Lot=="Lot3")['PSI'],mu=1500)

# Deliverable 4 - 

