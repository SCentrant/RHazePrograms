setwd("~/R")
rm(list = ls())
library(readr)
Survey <- read_csv("Survey_single_choice.csv")


Survey_F1 = array(dim=c(sum(Survey$Q17[Survey$Q17==3]/3)+sum(Survey$Q17[Survey$Q17==4]/4),10))
{
  Survey_F1[,1]=Survey$Q1[Survey$Q17==4|Survey$Q17==3]
  Survey_F1[,2]=Survey$Q2[Survey$Q17==4|Survey$Q17==3]
  Survey_F1[,3]=Survey$Q3[Survey$Q17==4|Survey$Q17==3]
  Survey_F1[,4]=Survey$Q4[Survey$Q17==4|Survey$Q17==3]
  Survey_F1[,5]=Survey$Q5[Survey$Q17==4|Survey$Q17==3]
  Survey_F1[,6]=Survey$Q6[Survey$Q17==4|Survey$Q17==3]
  Survey_F1[,7]=Survey$Q7[Survey$Q17==4|Survey$Q17==3]
  Survey_F1[,8]=Survey$Q20[Survey$Q17==4|Survey$Q17==3]
  Survey_F1[,9]=Survey$Q17[Survey$Q17==4|Survey$Q17==3]
  Survey_F1[,10]=Survey$Q25[Survey$Q17==4|Survey$Q17==3]
}

Survey_F2 = array(dim=c(sum(Survey_F1[Survey_F1[,8]==1,8])/1,10))
{
  Survey_F2[,1]=Survey_F1[Survey_F1[,8]==1,1]
  Survey_F2[,2]=Survey_F1[Survey_F1[,8]==1,2]
  Survey_F2[,3]=Survey_F1[Survey_F1[,8]==1,3]
  Survey_F2[,4]=Survey_F1[Survey_F1[,8]==1,4]
  Survey_F2[,5]=Survey_F1[Survey_F1[,8]==1,5]
  Survey_F2[,6]=Survey_F1[Survey_F1[,8]==1,6]
  Survey_F2[,7]=Survey_F1[Survey_F1[,8]==1,7]
  Survey_F2[,8]=Survey_F1[Survey_F1[,8]==1,8]
  Survey_F2[,9]=Survey_F1[Survey_F1[,8]==1,9]
  Survey_F2[,10]=Survey_F1[Survey_F1[,8]==1,10]
}

Survey_F3 = array(dim=c(sum(Survey_F2[Survey_F2[,9]==3,9])/3,10))
{
  Survey_F3[,1]=Survey_F2[Survey_F2[,9]==3,1]
  Survey_F3[,2]=Survey_F2[Survey_F2[,9]==3,2]
  Survey_F3[,3]=Survey_F2[Survey_F2[,9]==3,3]
  Survey_F3[,4]=Survey_F2[Survey_F2[,9]==3,4]
  Survey_F3[,5]=Survey_F2[Survey_F2[,9]==3,5]
  Survey_F3[,6]=Survey_F2[Survey_F2[,9]==3,6]
  Survey_F3[,7]=Survey_F2[Survey_F2[,9]==3,7]
  Survey_F3[,8]=Survey_F2[Survey_F2[,9]==3,8]
  Survey_F3[,9]=Survey_F2[Survey_F2[,9]==3,9]
  Survey_F3[,10]=Survey_F2[Survey_F2[,9]==3,10]
}

Survey_F4 = array(dim=c(sum(Survey_F3[Survey_F3[,10]==4,10])/4+sum(Survey_F3[Survey_F3[,10]==6,10])/6,10))
{
  Survey_F4[,1]=Survey_F3[Survey_F3[,10]==4|Survey_F3[,10]==6,1]
  Survey_F4[,2]=Survey_F3[Survey_F3[,10]==4|Survey_F3[,10]==6,2]
  Survey_F4[,3]=Survey_F3[Survey_F3[,10]==4|Survey_F3[,10]==6,3]
  Survey_F4[,4]=Survey_F3[Survey_F3[,10]==4|Survey_F3[,10]==6,4]
  Survey_F4[,5]=Survey_F3[Survey_F3[,10]==4|Survey_F3[,10]==6,5]
  Survey_F4[,6]=Survey_F3[Survey_F3[,10]==4|Survey_F3[,10]==6,6]
  Survey_F4[,7]=Survey_F3[Survey_F3[,10]==4|Survey_F3[,10]==6,7]
  Survey_F4[,8]=Survey_F3[Survey_F3[,10]==4|Survey_F3[,10]==6,8]
  Survey_F4[,9]=Survey_F3[Survey_F3[,10]==4|Survey_F3[,10]==6,9]
  Survey_F4[,10]=Survey_F3[Survey_F3[,10]==4|Survey_F3[,10]==6,10]
}

Age = array(dim=c(2,5))
Education = array(dim=c(2,5))

Age[1,1] = length(Survey$Q3[Survey$Q3==5])
Age[1,2] = length(Survey$Q3[Survey$Q3==1])
Age[1,3] = length(Survey$Q3[Survey$Q3==2])
Age[1,4] = length(Survey$Q3[Survey$Q3==3])
Age[1,5] = length(Survey$Q3[Survey$Q3==4])

Age[2,1] = length(Survey_F4[Survey_F4[,3]==5,3])
Age[2,2] = length(Survey_F4[Survey_F4[,3]==1,3])
Age[2,3] = length(Survey_F4[Survey_F4[,3]==2,3])
Age[2,4] = length(Survey_F4[Survey_F4[,3]==3,3])
Age[2,5] = length(Survey_F4[Survey_F4[,3]==4,3])


Education[1,1] = length(Survey$Q4[Survey$Q4==1])
Education[1,2] = length(Survey$Q4[Survey$Q4==6])
Education[1,3] = length(Survey$Q4[Survey$Q4==3])
Education[1,4] = length(Survey$Q4[Survey$Q4==5])
Education[1,5] = length(Survey$Q4[Survey$Q4==2])

Education[2,1] = length(Survey_F4[Survey_F4[,4]==1,4])
Education[2,2] = length(Survey_F4[Survey_F4[,4]==6,4])
Education[2,3] = length(Survey_F4[Survey_F4[,4]==3,4])
Education[2,4] = length(Survey_F4[Survey_F4[,4]==5,4])
Education[2,5] = length(Survey_F4[Survey_F4[,4]==2,4])


chisq.test(Age)
chisq.test(Education)