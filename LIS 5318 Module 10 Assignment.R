#install packages
install.packages("ggplot2")
library(ggplot2)

#create the dataset
read.csv("/Users/kelsey/Desktop/LIS 5318 Visual Analytics/LIS 5318 Module 10/LIS5318-Visual-Analysis-2024/synthetic_covid_impact_on_work.csv")
covid <- read.csv("/Users/kelsey/Desktop/LIS 5318 Visual Analytics/LIS 5318 Module 10/LIS5318-Visual-Analysis-2024/synthetic_covid_impact_on_work.csv")
View(covid)

#create dataframe
coviddata <- data.frame(covid)

#create the plot using ggplot2
covidplot <- ggplot(data = coviddata, aes(x=Hours_Worked_Per_Day, y=Meetings_Per_Day, color=Productivity_Change)) + geom_point()

help(geom_point)

print(covidplot)

