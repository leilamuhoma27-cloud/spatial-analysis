# Install and load the ellipsis package
#install.packages("ellipsis")
library(ellipsis)

# Install and load the readxl package
#install.packages("readxl")
library(readxl)

# Specify the file path of the Excel file
setwd("C:/Users/Leila/OneDrive - University of Reading/Climate data/Mann_kendell_test")

# Read the Excel file
data <- read_excel("Mann_kendell_frequency_SSP585_temperature.xlsx")
View(data)

# Install and load the Kendall package
#install.packages("Kendall")
library(Kendall)

# Perform Mann-Kendall test
result_ACCESS_CM2 <- Kendall(data$Year, data$`ACCESS_CM2`)
result_CanESM5 <- Kendall(data$Year, data$`CanESM5`)
result_INM_CM4_8 <- Kendall(data$Year, data$`INM_CM4_8`)
result_MIROC6 <- Kendall(data$Year, data$`MIROC6`)
result_MPI_ESM1_2_HR <- Kendall(data$Year, data$`MPI_ESM1_2_HR`)
result_NESM3 <- Kendall(data$Year, data$`NESM3`)
result_Ensamble_mean <- Kendall(data$Year, data$`Ensamble_mean`)

#Print the tesr statistic and p-value
cat("Mann-Kendall Test Statistic:", result_ACCESS_CM2$tau, "\n")
cat("Mann-Kendall P value:", result_ACCESS_CM2$sl, "\n")

cat("Mann-Kendall Test Statistic:", result_CanESM5$tau, "\n")
cat("Mann-Kendall P value:", result_CanESM5$sl, "\n")

cat("Mann-Kendall Test Statistic:", result_INM_CM4_8$tau, "\n")
cat("Mann-Kendall P value:", result_INM_CM4_8$sl, "\n")

cat("Mann-Kendall Test Statistic:", result_MIROC6$tau, "\n")
cat("Mann-Kendall P value:", result_MIROC6$sl, "\n")

cat("Mann-Kendall Test Statistic:", result_MPI_ESM1_2_HR$tau, "\n")
cat("Mann-Kendall P value:", result_MPI_ESM1_2_HR$sl, "\n")

cat("Mann-Kendall Test Statistic:", result_NESM3$tau, "\n")
cat("Mann-Kendall P value:", result_NESM3$sl, "\n")

cat("Mann-Kendall Test Statistic:", result_Ensamble_mean$tau, "\n")
cat("Mann-Kendall P value:", result_Ensamble_mean$sl, "\n")

