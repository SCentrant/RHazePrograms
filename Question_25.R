library(readr)
Survey_single_choice <- read_csv("Survey_single_choice")
#View(Survey_single_choice)
# handle Question 3
plot(Survey_single_choice$Q3)#plot the results for Question 3
hist(Survey_single_choice$Q3)#get the histogram of results for Question 3
sum(Survey_single_choice$Q3==1)/length(Survey_single_choice$Q3) # get percentage of participants 20 or younger
sum(Survey_single_choice$Q3==2)/length(Survey_single_choice$Q3)
sum(Survey_single_choice$Q3==3)/length(Survey_single_choice$Q3)
sum(Survey_single_choice$Q3==4)/length(Survey_single_choice$Q3)
sum(Survey_single_choice$Q3==5)/length(Survey_single_choice$Q3)
# find the answer of Question 25 for participants 20 or younger
hist(Survey_single_choice$Q25[Survey_single_choice$Q3==1])
# we can take two sample t-test to see difference in responses between different age groups
Q3_20_or_younger= Survey_single_choice$Q25[Survey_single_choice$Q3==1]
Q3_21_to_30 = Survey_single_choice$Q25[Survey_single_choice$Q3==2]
Q3_31_to_40 = Survey_single_choice$Q25[Survey_single_choice$Q3==3]
Q3_41_to_50 = Survey_single_choice$Q25[Survey_single_choice$Q3==4]
Q3_51_or_older = Survey_single_choice$Q25[Survey_single_choice$Q3==5]
# two-sample t-test between 1 and 2,3,4,5
t.test(Q3_20_or_younger,Q3_21_to_30,alternative='two.sided')  
t.test(Q3_20_or_younger,Q3_31_to_40,alternative='two.sided')
t.test(Q3_20_or_younger,Q3_41_to_50,alternative='two.sided')
t.test(Q3_20_or_younger,Q3_51_or_older,alternative='two.sided')

# two-sample t-test between 4 and 5
t.test(Q3_41_to_50,Q3_51_or_older,alternative='two.sided')
# two-sample t-test between 2 and 3,4,5
t.test(Q3_21_to_30,Q3_31_to_40,alternative='two.sided')  
t.test(Q3_21_to_30,Q3_41_to_50,alternative='two.sided')  
t.test(Q3_21_to_30,Q3_51_or_older,alternative='two.sided')  

# two-sample t-test between 3 and 4,5
t.test(Q3_31_to_40,Q3_41_to_50,alternative='two.sided')
t.test(Q3_31_to_40,Q3_51_or_older,alternative='two.sided')  