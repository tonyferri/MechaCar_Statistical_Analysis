library(dplyr)
mecha_table <- read.csv("MechaCar_mpg.csv")
head(mecha_table)
library(ggplot2)

plt <- ggplot(mecha_table,aes(x=vehicle_weight,y=mpg))
plt + geom_point()

lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=mecha_table)
summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=mecha_table))
