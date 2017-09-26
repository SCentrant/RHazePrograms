rm(list = ls())
library(readr)
Survey <- read_csv("Survey_single_choice.csv")


Option1 = array(dim=c(sum(Survey$Q6[Survey$Q6==1]/1),19))
Option2 = array(dim=c(sum(Survey$Q6[Survey$Q6==2]/2),19))
Option3 = array(dim=c(sum(Survey$Q6[Survey$Q6==3]/3),19))



i=1
{
  Option1[,1] = Survey$Q8[Survey$Q6==i]
  Option1[,2] = Survey$Q9[Survey$Q6==i]
  Option1[,3] = Survey$Q10[Survey$Q6==i]
  Option1[,4] = Survey$Q11[Survey$Q6==i]
  Option1[,5] = Survey$Q12[Survey$Q6==i]
  Option1[,6] = Survey$Q13[Survey$Q6==i]
  Option1[,7] = Survey$Q14[Survey$Q6==i]
  Option1[,8] = Survey$Q15[Survey$Q6==i]
  Option1[,9] = Survey$Q16[Survey$Q6==i]
  Option1[,10] = Survey$Q17[Survey$Q6==i]
  Option1[,11] = Survey$Q19[Survey$Q6==i]
  Option1[,12] = Survey$Q20[Survey$Q6==i]
  Option1[,13] = Survey$Q21[Survey$Q6==i]
  Option1[,14] = Survey$Q22[Survey$Q6==i]
  Option1[,15] = Survey$Q23[Survey$Q6==i]
  Option1[,16] = Survey$Q24[Survey$Q6==i]
  Option1[,17] = Survey$Q25[Survey$Q6==i]
  Option1[,18] = Survey$Q26[Survey$Q6==i]
  Option1[,19] = Survey$Q28[Survey$Q6==i]
}

i=2
{
  Option2[,1] = Survey$Q8[Survey$Q6==i]
  Option2[,2] = Survey$Q9[Survey$Q6==i]
  Option2[,3] = Survey$Q10[Survey$Q6==i]
  Option2[,4] = Survey$Q11[Survey$Q6==i]
  Option2[,5] = Survey$Q12[Survey$Q6==i]
  Option2[,6] = Survey$Q13[Survey$Q6==i]
  Option2[,7] = Survey$Q14[Survey$Q6==i]
  Option2[,8] = Survey$Q15[Survey$Q6==i]
  Option2[,9] = Survey$Q16[Survey$Q6==i]
  Option2[,10] = Survey$Q17[Survey$Q6==i]
  Option2[,11] = Survey$Q19[Survey$Q6==i]
  Option2[,12] = Survey$Q20[Survey$Q6==i]
  Option2[,13] = Survey$Q21[Survey$Q6==i]
  Option2[,14] = Survey$Q22[Survey$Q6==i]
  Option2[,15] = Survey$Q23[Survey$Q6==i]
  Option2[,16] = Survey$Q24[Survey$Q6==i]
  Option2[,17] = Survey$Q25[Survey$Q6==i]
  Option2[,18] = Survey$Q26[Survey$Q6==i]
  Option2[,19] = Survey$Q28[Survey$Q6==i]
}

i=3
{
  Option3[,1] = Survey$Q8[Survey$Q6==i]
  Option3[,2] = Survey$Q9[Survey$Q6==i]
  Option3[,3] = Survey$Q10[Survey$Q6==i]
  Option3[,4] = Survey$Q11[Survey$Q6==i]
  Option3[,5] = Survey$Q12[Survey$Q6==i]
  Option3[,6] = Survey$Q13[Survey$Q6==i]
  Option3[,7] = Survey$Q14[Survey$Q6==i]
  Option3[,8] = Survey$Q15[Survey$Q6==i]
  Option3[,9] = Survey$Q16[Survey$Q6==i]
  Option3[,10] = Survey$Q17[Survey$Q6==i]
  Option3[,11] = Survey$Q19[Survey$Q6==i]
  Option3[,12] = Survey$Q20[Survey$Q6==i]
  Option3[,13] = Survey$Q21[Survey$Q6==i]
  Option3[,14] = Survey$Q22[Survey$Q6==i]
  Option3[,15] = Survey$Q23[Survey$Q6==i]
  Option3[,16] = Survey$Q24[Survey$Q6==i]
  Option3[,17] = Survey$Q25[Survey$Q6==i]
  Option3[,18] = Survey$Q26[Survey$Q6==i]
  Option3[,19] = Survey$Q28[Survey$Q6==i]
}


#T-Tests
{
  t.test(Option1,Option2,alternative="two.sided")   ###
  t.test(Option1,Option3,alternative="two.sided")   ###
  
  t.test(Option2,Option3,alternative="two.sided")   ###
}

Test = array(dim=c(3,19))
TestSignificant6 = array(dim=c(19,3))

for(i in 1:19){
  
  Test[1,i]=t.test(Option1[,i],Option2[,i],alternative="two.sided")$p.value   ###
  Test[2,i]=t.test(Option1[,i],Option3[,i],alternative="two.sided")$p.value   ###
  
  Test[3,i]=t.test(Option2[,i],Option3[,i],alternative="two.sided")$p.value   ###
  
}

for(i in 1:19){
  
  for(j in 1:3){
    
    if(Test[j,i]<=0.0005){
      TestSignificant6[i,j]=3
    }
    else if(Test[j,i]<=0.005){
      TestSignificant6[i,j]=2
    }
    else if(Test[j,i]<=0.05){
      TestSignificant6[i,j]=1
    }
    else{
      TestSignificant6[i,j]=0
    }
    
  }
  
}