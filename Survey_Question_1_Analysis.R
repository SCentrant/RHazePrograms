rm(list = ls())
library(readr)
Survey_single_choice <- read_csv("Survey_single_choice.csv")
#View(Survey_single_choice)
# handle Question 1
plot(Survey_single_choice$Q1)#plot the results for Question 1\2
hist(Survey_single_choice$Q1)#get the histogram of results for Question 1
sum(Survey_single_choice$Q1==1)/length(Survey_single_choice$Q1) 
par( mfrow = c( 1, 2 ) )
hist(Survey_single_choice$Q19[Survey_single_choice$Q1==1])
hist(Survey_single_choice$Q19[Survey_single_choice$Q1==2])

hist(Survey_single_choice$Q20[Survey_single_choice$Q1==1])
hist(Survey_single_choice$Q20[Survey_single_choice$Q1==2])

hist(Survey_single_choice$Q21[Survey_single_choice$Q1==1])
hist(Survey_single_choice$Q21[Survey_single_choice$Q1==2])

hist(Survey_single_choice$Q25[Survey_single_choice$Q1==1])
hist(Survey_single_choice$Q25[Survey_single_choice$Q1==2])

Q9_male = Survey_single_choice$Q8[Survey_single_choice$Q1==2]
Q9_female = Survey_single_choice$Q8[Survey_single_choice$Q1==1]

t.test(Q9_male,Q9_female,alternative='two.sided')
#continue to do t tests for questions 8-29 
 



