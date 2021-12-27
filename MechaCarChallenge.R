library(tidyverse)
mecha_table <- read.csv("MechaCar_mpg.csv")
head(mecha_table)

# plt <- ggplot(mecha_table,aes(x=vehicle_weight,y=mpg))
# plt + geom_point()
# 
# mecha_matrix <- as.matrix(mecha_table[,c("vehicle_weight","spoiler_angle","ground_clearance","AWD","vehicle_length","mpg")])
# cor(mecha_matrix)

lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=mecha_table)
summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=mecha_table))

suspension_table <- read.csv("Suspension_Coil.csv")
head(suspension_table)

# lm(Manufacturing_Lot ~ VehicleID + PSI,data=suspension_table)
# summary(lm(Manufacturing_Lot ~ VehicleID + PSI,data=suspension_table))

# ?summarize()

# total_summary <- suspension_table %>% summarize(Mean=mean(),Median=median(),Variance=var(),SD=sd(), .groups = "drop")
# rlang::last_error()

total_summary <- suspension_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))


