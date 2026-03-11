# Install and load the ellipsis package
#install.packages("ellipsis")
library(ellipsis)

# Install and load the readxl package
#install.packages("readxl")
library(readxl)

# Specify the file path of the Excel file
setwd("C:/Users/Leila/OneDrive - University of Reading/Climate data/Historical")
#file_path <- "C:/Users/Leila/OneDrive/OneDrive/Masters Reading/Dissertation/Climate data/Historical/Mann_kendell_historical_rainfall.xlsx"

# Read the Excel file
data <- read_excel("Mann_kendell_historical_rainfall.xlsx")
View(data)

# Install and load the Kendall package
#install.packages("Kendall")
library(Kendall)

# Perform Mann-Kendall test
result <- Kendall(data$Year, data$`ACCESS-CM2`)
result1 <- Kendall(data$Year, data$`CanESM5`)
result2 <- Kendall(data$Year, data$`INM-CM4-8`)
result3 <- Kendall(data$Year, data$`MIROC6`)
result4 <- Kendall(data$Year, data$`MPI-ESM1-2-HR_`)
result5 <- Kendall(data$Year, data$`NESM3`)
result6 <- Kendall(data$Year, data$`Ensamble_mean`)

#Print the tesr statistic and p-value
cat("Mann-Kendall Test Statistic:", result$tau, "\n")
cat("Mann-Kendall P value:", result$sl, "\n")

cat("Mann-Kendall Test Statistic:", result1$tau, "\n")
cat("Mann-Kendall P value:", result1$sl, "\n")

cat("Mann-Kendall Test Statistic:", result2$tau, "\n")
cat("Mann-Kendall P value:", result2$sl, "\n")

cat("Mann-Kendall Test Statistic:", result3$tau, "\n")
cat("Mann-Kendall P value:", result3$sl, "\n")

cat("Mann-Kendall Test Statistic:", result4$tau, "\n")
cat("Mann-Kendall P value:", result4$sl, "\n")

cat("Mann-Kendall Test Statistic:", result5$tau, "\n")
cat("Mann-Kendall P value:", result5$sl, "\n")

cat("Mann-Kendall Test Statistic:", result6$tau, "\n")
cat("Mann-Kendall P value:", result6$sl, "\n")


