rm(list = ls())
library(readr)
Survey_single_choice <- read_csv("Survey_single_choice.csv")
#View(Survey_single_choice)
# handle Question 1
plot(Survey_single_choice$Q2)#plot the results for Question 1\2
hist(Survey_single_choice$Q2)#get the histogram of results for Question 1
sum(Survey_single_choice$Q1==1)/length(Survey_single_choice$Q1) 
par( mfrow = c( 1, 2 ) )
hist(Survey_single_choice$Q9[Survey_single_choice$Q2==1])
hist(Survey_single_choice$Q9[Survey_single_choice$Q2==2])
hist(Survey_single_choice$Q9[Survey_single_choice$Q2==3])

hist(Survey_single_choice$Q11[Survey_single_choice$Q2==1])
hist(Survey_single_choice$Q11[Survey_single_choice$Q2==2])
hist(Survey_single_choice$Q11[Survey_single_choice$Q2==3])

hist(Survey_single_choice$Q15[Survey_single_choice$Q2==1])
hist(Survey_single_choice$Q15[Survey_single_choice$Q2==2])
hist(Survey_single_choice$Q15[Survey_single_choice$Q2==3])

hist(Survey_single_choice$Q16[Survey_single_choice$Q2==1])
hist(Survey_single_choice$Q16[Survey_single_choice$Q2==2])
hist(Survey_single_choice$Q16[Survey_single_choice$Q2==3])

hist(Survey_single_choice$Q19[Survey_single_choice$Q2==1])
hist(Survey_single_choice$Q19[Survey_single_choice$Q2==2])
hist(Survey_single_choice$Q19[Survey_single_choice$Q2==3])

Q_child = Survey_single_choice$Q8[Survey_single_choice$Q2==1]
Q_nochild = Survey_single_choice$Q8[Survey_single_choice$Q2==2]
Q_planchild = Survey_single_choice$Q8[Survey_single_choice$Q2==3]
t.test(Q_child,Q_nochild,alternative='two.sided')
t.test(Q_child,Q_planchild,alternative='two.sided')
t.test(Q_planchild,Q_nochild,alternative='two.sided')

#plot p-values
childvsnochild1plot<-c(0.3172,
                       0.02344,
                       0.6342,
                       0.01553,
                       0.15,
                       0.2568,
                       0.7517,
                       0.9157,
                       0.0009029,
                       0.06869,
                       0.1194,
                       0.5038,
                       0.5148,
                       0.3376,
                       0.4822,
                       0.7769,
                       0.3494,
                       0.5107,
                       0.2885)
childvsnochild2plot<-c(0.2028,
                       3.21E-08,
                       0.1938,
                       0.01289,
                       0.2547,
                       0.0706,
                       0.6249,
                       0.0204,
                       0.07109,
                       0.5882,
                       0.004516,
                       0.2654,
                       0.7864,
                       0.6301,
                       0.6551,
                       0.152,
                       0.4357,
                       0.3467,
                       0.3353)
nochild1vsnochild2plot<-c(0.09884,
                          0.199,
                          0.2633,
                          0.4788,
                          0.5058,
                          0.9235,
                          0.5616,
                          0.2086,
                          0.04515,
                          0.1696,
                          0.7105,
                          0.9256,
                          0.4649,
                          0.5527,
                          0.3764,
                          0.5685,
                          0.6891,
                          0.2472,
                          0.7607)
plot(singlequestion,childvsnochild1plot,col="red",lwd=2,type="l", ylab="P Value", xlab="Single Choice Questions",main="P-Value from comparing Question 2 Choices Responses")
lines(singlequestion,childvsnochild2plot,col="blue",lwd=2, type="l")
lines(singlequestion,nochild1vsnochild2plot,col="black",lwd=2, type="l")
