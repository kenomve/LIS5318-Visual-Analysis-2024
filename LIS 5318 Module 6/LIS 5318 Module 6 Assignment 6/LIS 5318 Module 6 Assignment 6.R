read.csv("/Users/kelsey/Desktop/LIS 5318 Visual Analytics/JaxShootingData2023.csv")
df <- read.csv("/Users/kelsey/Desktop/LIS 5318 Visual Analytics/JaxShootingData2023.csv")
head(df)
install.packages("ggplot2")
library("ggplot2")
library(ggplot2)
ggplot(df, aes(x = OfficerAge, y = OfficerTenure)) + geom_line(color = "blue") + labs(x = "Officer Age", y = "Officer Tenure", title = "Officer Age vs Officer Tenure - Officer Involved Shootings - 2023") + theme_minimal()
df_summary <- df %>%
  group_by(Subjectshot, Fatal) %>%
  summarize(count = n())
library(dplyr)
df_summary <- df %>%
  group_by(Subjectshot, Fatal) %>%
  summarize(count = n())
ggplot(df_summary, aes(x = SubjectShot, y = count, fill = Fatal)) +
  geom_bar(stat = "identity", position = "dodge", alpha = 0.7) +
  labs(x = "Subject Shot", y = "Count", title = "Officer Involved Shootings - 2023") +
  theme_minimal()
df <- read.csv("/Users/kelsey/Desktop/LIS 5318 Visual Analytics/JaxShootingData2023.csv")
install.packages("ggplot2")
library(ggplot2)
library(dplyr)
df_summary <- df %>%
  group_by(Subjectshot, Fatal) %>%
  summarize(count = n())
ggplot(df_summary, aes(x = Subjectshot, y = count, fill = Fatal)) +
  geom_bar(stat = "identity", position = "dodge", alpha = 0.7) +
  labs(x = "Subject Shot", y = "Count", title = "Officer Involved Shootings - 2023") +
  theme_minimal()
install.packages("ggplot2")
library(ggplot2)
ggplot(df, aes(x = OfficerAge, y = OfficerTenure)) +
  geom_point(color = "blue", size = 3, alpha = 0.7) +  
  labs(x = "Officer Age", y = "Officer Tenure", title = "Scatterplot of Officer Age vs Officer Tenure - Jacksonville Sheriff's Dept. Police Involved Shootings - 2023") +
  theme_minimal()
