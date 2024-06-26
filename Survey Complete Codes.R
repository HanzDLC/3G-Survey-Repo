library(dplyr)
library(ggplot2)
library(readr)
library(tibble)

generativeAI <- read_csv("The Use of Generative AI for Students.csv")
as_tibble(generativeAI)

generativeAI2 <- generativeAI

View(generativeAI2)

#factor sex
factor_sex <- factor(generativeAI2$Sex, levels = c("Male", "Female"))
factor_sex <- as.integer(factor_sex)


#factor age
factor_age <- factor(generativeAI2$`Age:`, levels = c("Under 18", "18-24", "25-34", "35 and above"))
factor_age <- as.integer(factor_age)


#factor educational level
factor_educ_level <- factor(generativeAI2$`Education level:`, levels = c("High school or lower",
                                                                         "Some college or vocational training",
                                                                         "Bachelor's degree",
                                                                         "Master's degree",
                                                                         "Doctoral degree"))
factor_educ_level <- as.integer(factor_educ_level)


familarity_mean <- mean(generativeAI2$`Familiarity with AI Technology`)

#factoring frequency of usage of AI 
factor_frequency_use <- factor(generativeAI2$`How often do you use generative AI?`, 
                               levels = c("Several times a day",
                                          "Once a day",
                                          "Several times a week",
                                          "Once a week",
                                          "Less often"))
factor_frequency_use <- as.integer(factor_frequency_use)




#performance expectancy

surveyPEOG <- surveyDF[9:12]

#Calculate the mean of each Column
surveyPE <- colMeans(surveyPEOG)
surveyPEmean <- mean(unlist(surveyPEOG))
surveyPE <- tibble(surveyPE)

#Calculate SD of each column
surveyPE <- mutate(surveyPE, SD = sapply(surveyPEOG, sd))
surveyPEsd <- sd(unlist(surveyPEOG))
surveyPEsd

#Renaming the Columns
colnames(surveyPE) <- c("Mean", "SD")
labelPE <- c()

#Re label
for(i in 1:length(surveyPEOG)){
  labelPE[i] <- paste0("PE", i)
}

labelPE

surveyPE <- cbind(labelPE, surveyPE)
colnames(surveyPE)[1] <- "Performance Expectancy"

View(surveyPE)





#Read the CSV
survey <- read.csv("The Use of Generative AI for Students.csv")
surveyQ <- read.csv("The Use of Generative AI for Students.csv", header = FALSE)

View(surveyQ)
View(survey)



View(survey)
#Make it a table
surveyDF <- as_tibble(survey)



#Effort Expectancy
surveyEAOG <- surveyDF[13:16]


#Calculate the mean of each Column
surveyEA <- colMeans(surveyEAOG)
surveyEAmean <- mean(unlist(surveyEAOG))
surveyEA <- tibble(surveyEA)

#Calculate SD of each column
surveyEA <- mutate(surveyEA, SD = sapply(surveyEAOG, sd))
surveyEAsd <- sd(unlist(surveyEAOG))
#Renaming the Columns
colnames(surveyEA) <- c("Mean", "SD")

#Re label
labelEA <- c()
for(i in 1:length(surveyEAOG)){
  labelEA[i] <- paste0("EE", i)
}

labelEA

surveyEA <- cbind(labelEA, surveyEA)
colnames(surveyEA)[1] <- "Effort Expectancy"

View(surveyEA)



#Attitude toward using technology
surveyATOG <- surveyDF[17:20]

#Calculate the mean of each Column
surveyAT <- colMeans(surveyATOG)
surveyAT <- tibble(surveyAT)

#Calculate SD of each column
surveyAT <- mutate(surveyAT, SD = sapply(surveyATOG, sd))

#Renaming the Columns
colnames(surveyAT) <- c("Mean", "SD")

labelAT <- c()
for(i in 1:length(surveyATOG)){
  labelAT[i] <- paste0("AT", i)
}

labelAT



surveyAT <- cbind(labelAT, surveyAT)
colnames(surveyAT)[1] <- "Attitude Towards Using Technology"

#View the table
View(surveyAT)




#Social Influence
surveySIOG <- surveyDF[21:24]


#Calculate the mean of each Column
surveySI <- colMeans(surveySIOG)
surveySImean <- mean(unlist(surveySIOG))
surveySI <- tibble(surveySI)

#Calculate SD of each column
surveySI <- mutate(surveySI, SD = sapply(surveySIOG, sd))
surveySIsd <- sd(unlist(surveySIOG))

#Renaming the Columns
colnames(surveySI) <- c("Mean", "SD")

labelSI <- c()
for(i in 1:length(surveyEAOG)){
  labelSI[i] <- paste0("SI", i)
}

labelSI

surveySI <- cbind(labelSI, surveySI)
colnames(surveySI)[1] <- "Social Influence"

#View the table
View(surveySI)


#Facilitating Conditions Range
surveyFCOG<- surveyDF[25:28]

#Calculate the mean of each Column
surveyFC <- colMeans(surveyFCOG)
surveyFCmean <- mean(unlist(surveyFCOG))

surveyFC <- tibble(surveyFC)

#Calculate SD of each column
surveyFC <- mutate(surveyFC, SD = sapply(surveyFCOG, sd))
surveyFCsd <- sd(unlist(surveyFCOG))
#Renaming the Columns
colnames(surveyFC) <- c("Mean", "SD")
labelFC <- c()
for(i in 1:length(surveyEAOG)){
  labelFC[i] <- paste0("FC", i)
}

labelFC
surveyFC <- cbind(labelFC, surveyFC)
colnames(surveyFC)[1] <- "Facilitating Conditions"

#View the table
View(surveyFC)



#Usage Range
surveyBIOG <- surveyDF[26:39]
View(surveyBIOG)

#Calculate the mean of each Column
surveyBI <- colMeans(surveyBIOG)
surveyBI <- tibble(surveyBI)


#Calculate SD of each column
surveyBI <- mutate(surveyBI, SD = sapply(surveyBIOG , sd))
View(surveyBI)
colnames(surveyBI)[1] <- "Mean"
labelBI <- c()
for(i in 1:length(surveyBIOG)){
  labelBI[i] <- paste0("BI", i)
}

labelBI
surveyBI <- cbind(labelBI, surveyBI)
colnames(surveyBI)[1] <- "Usage"

View(surveyBI)



#Whole Survey

surveyALLOG <- surveyDF[9:39]
View(surveyALLOG)

#Calculate the mean of each Column
surveyALL <- colMeans(surveyALLOG)
surveyALL <- tibble(surveyALL)

#Calculate SD of each column
surveyALL <- mutate(surveyALL, SD = sapply(surveyALLOG, sd))

#Renaming the Columns
colnames(surveyALL) <- c("Mean", "SD")
labelALL <- as.vector(unlist(surveyQ[1, 9:39]))
surveyALL <- cbind(labelALL, surveyALL)
colnames(surveyALL)[1] <- "Whole Survey"

#View the table
View(surveyALL)



whole_df <- data.frame(Code = c("PE", "EE", "SI", "FC"), Description = c("Performance Expectancy", "Effort Expectancy", "Social Influence", "Facilitating Conditions"),
                       Mean = c(surveyPEmean, surveyEAmean, surveySImean, surveyFCmean), SD = c(surveyPEsd, surveyEAsd, surveySIsd, surveyFCsd))
View(whole_df)  



# Create a table with the count of each level in the 'Sex' column
sex_counts <- table(survey$Sex)

# Convert the table to a data frame for plotting
sex_df <- as.data.frame(sex_counts)
colnames(sex_df) <- c("Sex", "Count")


# Pie chart for 'Sex'
ggplot(sex_df, aes(x = "", y = Count, fill = Sex)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  scale_fill_manual(values = c("pink", "blue"))+
  geom_text(aes(label = Count), position = position_stack(vjust = 0.5)) + # Display only counts
  theme_void() +
  labs(title = "Sexes of Participants", x = NULL, y = NULL) +
  theme(legend.title = element_blank())

cat("More males use Generative AI than females")

#Scatter plot for Age Demographic
survey_counts <- survey %>%
  group_by(Age.) %>%
  summarise(count = n())
ggplot(survey_counts, aes(x = Age., y = count)) +
  geom_point() +
  labs(title = "Age Median of Pariticipants", x = "Age", y = "Number of Participants") +
  theme_minimal()
cat("Most of the users are ages between 18-24. The least amount of users was of the age group 25-34")

#Bar plot for Educational Level
survey %>%
  group_by(Education.level.) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = Education.level., y = count, fill = Education.level.)) +
  geom_bar(stat = "identity", width = 0.7) +
  scale_fill_manual(values = c("orange", "yellow","green","lightblue"))+
  geom_text(aes(label = count), vjust = -0.3) + # Display counts on top of the bars
  theme_void() +
  labs(title = "Educational Level of Participants", x = NULL, y = NULL) +
  theme(legend.title = element_blank())

cat("Most of the users are currently in college or in vocational training. 
    And the least number of users ")

# Converting Familiarity with AI Technology to a factor variable 
survey$Familiarity.with.AI.Technology <- as.factor(survey$Familiarity.with.AI.Technology)

# Pie chart for Familiarity with AI Technology
familiarity_counts <- survey %>%
  count(`Familiarity.with.AI.Technology`) %>%
  mutate(percentage = n / sum(n) * 100)

ggplot(familiarity_counts, aes(x = "", y = percentage, fill = `Familiarity.with.AI.Technology`)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  geom_text(aes(label = paste0(round(percentage), "%")), position = position_stack(vjust = 0.5)) + # Display percentages
  theme_void() +
  labs(title = "Participant's Familiarity with AI Technology", x = NULL, y = NULL) +
  theme(legend.title = element_blank())
cat("The pie graph shows that 76 percent of the users are familiar with using AI techbology")



# Converting Have you used Generative AI Technology Before?  to a factor variable
survey$`Have.you.used.Generative.AI.technology.before.` <- as.factor(survey$`Have.you.used.Generative.AI.technology.before.`)

# Pie chart for Have you used Generative AI Technology Before? 
ggplot(survey, aes(x = "", y = ..count.., fill = `Have.you.used.Generative.AI.technology.before.`)) +
  geom_bar(stat = "count", width = 1) +
  coord_polar("y", start = 0) +
  geom_text(aes(label = ..count..), stat = "count", position = position_stack(vjust = 0.5)) + 
  scale_fill_manual(values = c("wheat", "cyan")) + 
  theme_void() +
  labs(title = "Participant's Usage of Generative AI Technology", x = NULL, y = NULL) +
  theme(legend.title = element_blank())

cat("The graph shows that majority of the users have used generative AI")


# Converting How often do you use generative AI?  to a factor variable
survey$`How.often.do.you.use.generative.AI.` <- as.factor(survey$`How.often.do.you.use.generative.AI.`)

# histogram for How often do you use generative AI? 
ggplot(survey, aes(x = `How.often.do.you.use.generative.AI.`)) +
  geom_bar(fill = "lightblue", color = "black") +
  geom_text(stat = "count", aes(label = paste0(..count..)), vjust = -0.5, size = 3, color = "black") +
  labs(title = "Participant's Usage Frequency of Generative AI",
       x = "Usage Frequency",
       y = "Count") +
  theme_minimal()
cat("Most users use generative AI is Several times a week with 21 respondents,
    and the least is frequency is once a day with 2 respondents")



