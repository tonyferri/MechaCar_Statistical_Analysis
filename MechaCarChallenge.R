library(tidyverse)
mecha_table <- read.csv("MechaCar_mpg.csv")
# head(mecha_table)

lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=mecha_table)
summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=mecha_table))

suspension_table <- read.csv("Suspension_Coil.csv")
# head(suspension_table)

total_summary <- suspension_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

population_table <- suspension_table %>% sample_n(50)

population_lot1 <- subset(population_table, Manufacturing_Lot == "Lot1")
population_lot2 <- subset(population_table, Manufacturing_Lot == "Lot2")
population_lot3 <- subset(population_table, Manufacturing_Lot == "Lot3")

suspension_lot1 <- subset(suspension_table, Manufacturing_Lot == "Lot1")
suspension_lot2 <- subset(suspension_table, Manufacturing_Lot == "Lot2")
suspension_lot3 <- subset(suspension_table, Manufacturing_Lot == "Lot3")

t.test(log10(suspension_table$PSI),mu=mean(log10(population_table$PSI))) #compare sample versus population means (total)

t.test(log10(suspension_lot1$PSI),mu=mean(log10(population_lot1$PSI))) #compare sample versus population means (lot 1)
t.test(log10(suspension_lot2$PSI),mu=mean(log10(population_lot2$PSI))) #compare sample versus population means (lot 2)
t.test(log10(suspension_lot3$PSI),mu=mean(log10(population_lot3$PSI))) #compare sample versus population means (lot 3)
