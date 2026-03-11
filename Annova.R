#loading the data set
crop.data <- read.csv("crop.data.csv")
View(crop.data)

#One-way ANOVA R code
one.way <- aov(yield ~ fertilizer, data = crop.data)

#One-way ANOVA model summary
summary(one.way)

TukeyHSD(one.way)

