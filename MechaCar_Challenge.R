## Challenge 15 Deliverable 1

# Loading dplyr and tidyverse packages
library(dplyr)
library(tidyverse)

# Loading and reading in CSV file as a Data-Frame
Mecha_mpg <- read.csv(file = '../01_Demo/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Performing Multiple linear regression on all columns of the data-frame
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha_mpg))

# Performing a second MLR on the columns that were significant to see their impact
lm(mpg ~ vehicle_length + ground_clearance, data = Mecha_mpg)
summary(lm(mpg ~ vehicle_length + ground_clearance, data = Mecha_mpg))

ggplot(Mecha_mpg, aes(vehicle_length, mpg)) + geom_point() +
  geom_smooth(stat = "smooth")

## Deliverable 2

# Import and read in coil CSV file
mecha_coil <- read.csv(file = '../01_Demo/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Create a total summary data-frame using the summarize function to get mean, median, sd and variance
total_summary <- mecha_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_coil=n(), .groups='keep')


# Create a lot summary data frame
lot_summary <- mecha_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                        Median_PSI=median(PSI),
                                                                        Var_PSI=var(PSI),
                                                                        Std_Dev_PSI=sd(PSI),
                                                                        Num_coil=n(), .groups='keep')

# Box plot whole lot
plt1 <- ggplot(mecha_coil, aes(y=PSI)) #import data to ggplot2
plt1 + geom_boxplot() #add boxplot

plt2 <- ggplot(mecha_coil, aes(x=Manufacturing_Lot, y=PSI))
plt2 + geom_boxplot()


# Deliverable 3
# Use t.test to determine if PSI across all lots is statistically different from pop. mean of 1500
t.test(mecha_coil$PSI, mu=1500)

# Use t.test three more times to determine if each individual lot is different from population
lot1 <- subset(mecha_coil, Manufacturing_Lot == "Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot == "Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot == "Lot3")


t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)

