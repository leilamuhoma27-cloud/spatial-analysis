library(Kendall)
station_data <- read.csv("Station.csv")
View(station_data)
#head(station_data)
station_data
annual = station_data$X13
season = station_data$X14
Rain_day_annual=station_data$X15
Rain_day_season=station_data$X16

#checking trands
MannKendall(annual)
#SeasonalMannKendall(station_data)
#plot(station_data)
MannKendall(season)
#Jan = station_data$X1
#MannKendall(Jan)
#visualizing trend
plot(annual)
lines(lowess(time(annual),annual), col='blue')
#checking trend for rain days
MannKendall(Rain_day_annual)
MannKendall(Rain_day_season)
