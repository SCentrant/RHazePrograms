library(readr)
Survey_single_choice <- read_csv("Survey_single_choice")
#View(Survey_single_choice)
# handle Question 4
plot(Survey_single_choice$Q4)#plot the results for Question 3
hist(Survey_single_choice$Q4)#get the histogram of results for Question 3
sum(Survey_single_choice$Q4==1)/length(Survey_single_choice$Q4) # get percentage of participants 20 or younger
sum(Survey_single_choice$Q4==2)/length(Survey_single_choice$Q4)
sum(Survey_single_choice$Q4==3)/length(Survey_single_choice$Q4)
sum(Survey_single_choice$Q4==4)/length(Survey_single_choice$Q4)
sum(Survey_single_choice$Q4==5)/length(Survey_single_choice$Q4)
# find the answer of Question 10 for participants 20 or younger
hist(Survey_single_choice$Q8[Survey_single_choice$Q4==1])
# we can take two sample t-test to see the difference in responses between age groups
Q4_no_education= Survey_single_choice$Q8[Survey_single_choice$Q4==1]
Q4_elementary = Survey_single_choice$Q8[Survey_single_choice$Q4==2]
Q4_middle_school = Survey_single_choice$Q8[Survey_single_choice$Q4==3]
Q4_high_school= Survey_single_choice$Q8[Survey_single_choice$Q4==4]
Q4_college = Survey_single_choice$Q8[Survey_single_choice$Q4==5]
Q4_masters = Survey_single_choice$Q8[Survey_single_choice$Q4==6]
Q4_phd = Survey_single_choice$Q8[Survey_single_choice$Q4==7]

# two-sample t-test between 1 and 2,3,4,5,6,7
t.test(Q4_no_education,Q4_elementary,alternative='two.sided')  
t.test(Q4_no_education,Q4_middle_school,alternative='two.sided')
t.test(Q4_no_education,Q4_high_school,alternative='two.sided')
t.test(Q4_no_education,Q4_college,alternative='two.sided')
t.test(Q4_no_education,Q4_college,alternative='two.sided')
t.test(Q4_no_education,Q4_masters,alternative='two.sided')
t.test(Q4_no_education,Q4_phd,alternative='two.sided')

# two-sample t-test between 2 and 3,4,5,6,7
t.test(Q4_elementary,Q4_middle_school,alternative='two.sided')  
t.test(Q4_elementary,Q4_high_school,alternative='two.sided')  
t.test(Q4_elementary,Q4_college,alternative='two.sided')  
t.test(Q4_elementary,Q4_masters,alternative='two.sided')
t.test(Q4_elementary,Q4_phd,alternative='two.sided')  

# two-sample t-test between 3 and 4,5,6,7
t.test(Q4_middle_school,Q4_high_school,alternative='two.sided')  
t.test(Q4_middle_school,Q4_college,alternative='two.sided')  
t.test(Q4_middle_school,Q4_masters,alternative='two.sided')  
t.test(Q4_middle_school,Q4_phd,alternative='two.sided')  

# two-sample t-test between 4 and 5,6,7
t.test(Q4_high_school,Q4_college,alternative='two.sided')  
t.test(Q4_high_school,Q4_masters,alternative='two.sided')  
t.test(Q4_high_school,Q4_phd,alternative='two.sided')  

# two-sample t-test between 5 and 6,7
t.test(Q4_college,Q4_masters,alternative='two.sided')  
t.test(Q4_college,Q4_phd,alternative='two.sided')  

# two-sample t-test between 6 and 7
t.test(Q4_masters,Q4_phd,alternative='two.sided')  