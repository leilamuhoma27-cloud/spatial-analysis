my_data <- read.csv("Sowing_window_yields.csv")
View(my_data)

#summary statistics of my whole data
summary(my_data)

#One way ANOVA TEST
one.way <- aov(Yields ~ Sowing_window, data = my_data)
summary(one.way)

#One-way ANOVA multiple comparison
#TukeyHSD(one.way)
tukey.plot.test<-TukeyHSD(one.way)
plot(tukey.plot.test, las = 1)

# boxplot
library(ggplot)
ggplot
ggplot(my_data, aes(Sowing_window, Yields)) + 
  geom_boxplot()

#Two way ANOVA TEST
two.way <- aov(Yields ~ Cultivar + Nitrogen, data = my_data)
summary(two.way)

#Two-way ANOVA multiple comparison
TukeyHSD(two.way)

#test whether two variables have an interaction effect in ANOVA
interaction <- aov(Yields ~ Cultivar*Nitrogen, data = my_data)
summary(interaction)
