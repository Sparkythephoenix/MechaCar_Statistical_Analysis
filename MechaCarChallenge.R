library(dplyr)

MechaCar_table <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

head(MechaCar_table)

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +
     AWD, data=MechaCar_table)

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data=MechaCar_table))


#reading data
suspension_table <- read.csv(file='Suspension_Coil.csv',
                             check.names = F, 
                             stringsAsFactors = F)

head(suspension_table)

#calculating basic stats
total_summary <- suspension_table %>% summarize(mean = mean(PSI),
                                                median = median(PSI),
                                                variance = var(PSI), 
                                                SD = sd(PSI))

lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>%
  summarize(mean = mean(PSI),
            median = median(PSI),
            variance = var(PSI), 
            SD = sd(PSI))

#t-test across all lots
t.test(suspension_table$PSI, mu=1500)

#t-test 1 lot
Lot1 <- subset(suspension_table, Manufacturing_Lot == 'Lot1')
t.test(Lot1$PSI, mu=1500)

#t-test 2 lot
Lot2 <- subset(suspension_table, Manufacturing_Lot == 'Lot2')
t.test(Lot2$PSI, mu=1500)

#t-test 3 lot
Lot3 <- subset(suspension_table, Manufacturing_Lot == 'Lot3')
t.test(Lot3$PSI, mu=1500)