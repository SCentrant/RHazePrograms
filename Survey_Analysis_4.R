setwd("~/R")
rm(list = ls())
library(readr)
Survey <- read_csv("Survey_single_choice.csv")


Option1 = array(dim=c(sum(Survey$Q4[Survey$Q4==1]/1),19))
Option2 = array(dim=c(sum(Survey$Q4[Survey$Q4==2]/2),19))
Option3 = array(dim=c(sum(Survey$Q4[Survey$Q4==3]/3),19))
Option4 = array(dim=c(sum(Survey$Q4[Survey$Q4==4]/4),19))
Option5 = array(dim=c(sum(Survey$Q4[Survey$Q4==5]/5),19))
Option6 = array(dim=c(sum(Survey$Q4[Survey$Q4==6]/6),19))




i=1
{
  Option1[,1] = Survey$Q8[Survey$Q4==i]
  Option1[,2] = Survey$Q9[Survey$Q4==i]
  Option1[,3] = Survey$Q10[Survey$Q4==i]
  Option1[,4] = Survey$Q11[Survey$Q4==i]
  Option1[,5] = Survey$Q12[Survey$Q4==i]
  Option1[,6] = Survey$Q13[Survey$Q4==i]
  Option1[,7] = Survey$Q14[Survey$Q4==i]
  Option1[,8] = Survey$Q15[Survey$Q4==i]
  Option1[,9] = Survey$Q16[Survey$Q4==i]
  Option1[,10] = Survey$Q17[Survey$Q4==i]
  Option1[,11] = Survey$Q19[Survey$Q4==i]
  Option1[,12] = Survey$Q20[Survey$Q4==i]
  Option1[,13] = Survey$Q21[Survey$Q4==i]
  Option1[,14] = Survey$Q22[Survey$Q4==i]
  Option1[,15] = Survey$Q23[Survey$Q4==i]
  Option1[,16] = Survey$Q24[Survey$Q4==i]
  Option1[,17] = Survey$Q25[Survey$Q4==i]
  Option1[,18] = Survey$Q26[Survey$Q4==i]
  Option1[,19] = Survey$Q28[Survey$Q4==i]
}

i=2
{
  Option2[,1] = Survey$Q8[Survey$Q4==i]
  Option2[,2] = Survey$Q9[Survey$Q4==i]
  Option2[,3] = Survey$Q10[Survey$Q4==i]
  Option2[,4] = Survey$Q11[Survey$Q4==i]
  Option2[,5] = Survey$Q12[Survey$Q4==i]
  Option2[,6] = Survey$Q13[Survey$Q4==i]
  Option2[,7] = Survey$Q14[Survey$Q4==i]
  Option2[,8] = Survey$Q15[Survey$Q4==i]
  Option2[,9] = Survey$Q16[Survey$Q4==i]
  Option2[,10] = Survey$Q17[Survey$Q4==i]
  Option2[,11] = Survey$Q19[Survey$Q4==i]
  Option2[,12] = Survey$Q20[Survey$Q4==i]
  Option2[,13] = Survey$Q21[Survey$Q4==i]
  Option2[,14] = Survey$Q22[Survey$Q4==i]
  Option2[,15] = Survey$Q23[Survey$Q4==i]
  Option2[,16] = Survey$Q24[Survey$Q4==i]
  Option2[,17] = Survey$Q25[Survey$Q4==i]
  Option2[,18] = Survey$Q26[Survey$Q4==i]
  Option2[,19] = Survey$Q28[Survey$Q4==i]
}

i=3
{
  Option3[,1] = Survey$Q8[Survey$Q4==i]
  Option3[,2] = Survey$Q9[Survey$Q4==i]
  Option3[,3] = Survey$Q10[Survey$Q4==i]
  Option3[,4] = Survey$Q11[Survey$Q4==i]
  Option3[,5] = Survey$Q12[Survey$Q4==i]
  Option3[,6] = Survey$Q13[Survey$Q4==i]
  Option3[,7] = Survey$Q14[Survey$Q4==i]
  Option3[,8] = Survey$Q15[Survey$Q4==i]
  Option3[,9] = Survey$Q16[Survey$Q4==i]
  Option3[,10] = Survey$Q17[Survey$Q4==i]
  Option3[,11] = Survey$Q19[Survey$Q4==i]
  Option3[,12] = Survey$Q20[Survey$Q4==i]
  Option3[,13] = Survey$Q21[Survey$Q4==i]
  Option3[,14] = Survey$Q22[Survey$Q4==i]
  Option3[,15] = Survey$Q23[Survey$Q4==i]
  Option3[,16] = Survey$Q24[Survey$Q4==i]
  Option3[,17] = Survey$Q25[Survey$Q4==i]
  Option3[,18] = Survey$Q26[Survey$Q4==i]
  Option3[,19] = Survey$Q28[Survey$Q4==i]
}

i=4
{
  Option4[,1] = Survey$Q8[Survey$Q4==i]
  Option4[,2] = Survey$Q9[Survey$Q4==i]
  Option4[,3] = Survey$Q10[Survey$Q4==i]
  Option4[,4] = Survey$Q11[Survey$Q4==i]
  Option4[,5] = Survey$Q12[Survey$Q4==i]
  Option4[,6] = Survey$Q13[Survey$Q4==i]
  Option4[,7] = Survey$Q14[Survey$Q4==i]
  Option4[,8] = Survey$Q15[Survey$Q4==i]
  Option4[,9] = Survey$Q16[Survey$Q4==i]
  Option4[,10] = Survey$Q17[Survey$Q4==i]
  Option4[,11] = Survey$Q19[Survey$Q4==i]
  Option4[,12] = Survey$Q20[Survey$Q4==i]
  Option4[,13] = Survey$Q21[Survey$Q4==i]
  Option4[,14] = Survey$Q22[Survey$Q4==i]
  Option4[,15] = Survey$Q23[Survey$Q4==i]
  Option4[,16] = Survey$Q24[Survey$Q4==i]
  Option4[,17] = Survey$Q25[Survey$Q4==i]
  Option4[,18] = Survey$Q26[Survey$Q4==i]
  Option4[,19] = Survey$Q28[Survey$Q4==i]
}

i=5
{
  Option5[,1] = Survey$Q8[Survey$Q4==i]
  Option5[,2] = Survey$Q9[Survey$Q4==i]
  Option5[,3] = Survey$Q10[Survey$Q4==i]
  Option5[,4] = Survey$Q11[Survey$Q4==i]
  Option5[,5] = Survey$Q12[Survey$Q4==i]
  Option5[,6] = Survey$Q13[Survey$Q4==i]
  Option5[,7] = Survey$Q14[Survey$Q4==i]
  Option5[,8] = Survey$Q15[Survey$Q4==i]
  Option5[,9] = Survey$Q16[Survey$Q4==i]
  Option5[,10] = Survey$Q17[Survey$Q4==i]
  Option5[,11] = Survey$Q19[Survey$Q4==i]
  Option5[,12] = Survey$Q20[Survey$Q4==i]
  Option5[,13] = Survey$Q21[Survey$Q4==i]
  Option5[,14] = Survey$Q22[Survey$Q4==i]
  Option5[,15] = Survey$Q23[Survey$Q4==i]
  Option5[,16] = Survey$Q24[Survey$Q4==i]
  Option5[,17] = Survey$Q25[Survey$Q4==i]
  Option5[,18] = Survey$Q26[Survey$Q4==i]
  Option5[,19] = Survey$Q28[Survey$Q4==i]
}

i=6
{
  Option6[,1] = Survey$Q8[Survey$Q4==i]
  Option6[,2] = Survey$Q9[Survey$Q4==i]
  Option6[,3] = Survey$Q10[Survey$Q4==i]
  Option6[,4] = Survey$Q11[Survey$Q4==i]
  Option6[,5] = Survey$Q12[Survey$Q4==i]
  Option6[,6] = Survey$Q13[Survey$Q4==i]
  Option6[,7] = Survey$Q14[Survey$Q4==i]
  Option6[,8] = Survey$Q15[Survey$Q4==i]
  Option6[,9] = Survey$Q16[Survey$Q4==i]
  Option6[,10] = Survey$Q17[Survey$Q4==i]
  Option6[,11] = Survey$Q19[Survey$Q4==i]
  Option6[,12] = Survey$Q20[Survey$Q4==i]
  Option6[,13] = Survey$Q21[Survey$Q4==i]
  Option6[,14] = Survey$Q22[Survey$Q4==i]
  Option6[,15] = Survey$Q23[Survey$Q4==i]
  Option6[,16] = Survey$Q24[Survey$Q4==i]
  Option6[,17] = Survey$Q25[Survey$Q4==i]
  Option6[,18] = Survey$Q26[Survey$Q4==i]
  Option6[,19] = Survey$Q28[Survey$Q4==i]
}


#T-Tests
{
  t.test(Option1,Option2,alternative="two.sided")   
  t.test(Option1,Option3,alternative="two.sided")   
  t.test(Option1,Option4,alternative="two.sided")   
  t.test(Option1,Option5,alternative="two.sided")   
  t.test(Option1,Option6,alternative="two.sided")   
  
  t.test(Option2,Option3,alternative="two.sided")   
  t.test(Option2,Option4,alternative="two.sided")   
  t.test(Option2,Option5,alternative="two.sided")   
  t.test(Option2,Option6,alternative="two.sided")   
  
  t.test(Option3,Option4,alternative="two.sided")   
  t.test(Option3,Option5,alternative="two.sided")   
  t.test(Option3,Option6,alternative="two.sided")
  
  t.test(Option4,Option5,alternative="two.sided")   
  t.test(Option4,Option6,alternative="two.sided")   
  
  t.test(Option5,Option6,alternative="two.sided")   
}

Test = array(dim=c(15,19))
TestSignificant4 = array(dim=c(19,15))

for(i in 1:19){
  
  Test[1,i]=t.test(Option1[,i],Option2[,i],alternative="two.sided")$p.value   
  Test[2,i]=t.test(Option1[,i],Option3[,i],alternative="two.sided")$p.value   
  Test[3,i]=1   
  Test[4,i]=t.test(Option1[,i],Option5[,i],alternative="two.sided")$p.value   
  Test[5,i]=t.test(Option1[,i],Option6[,i],alternative="two.sided")$p.value   
  
  Test[6,i]=t.test(Option2[,i],Option3[,i],alternative="two.sided")$p.value   
  Test[7,i]=1
  Test[8,i]=t.test(Option2[,i],Option5[,i],alternative="two.sided")$p.value   
  Test[9,i]=t.test(Option2[,i],Option6[,i],alternative="two.sided")$p.value   
  
  Test[10,i]=1  
  Test[11,i]=t.test(Option3[,i],Option5[,i],alternative="two.sided")$p.value   
  Test[12,i]=t.test(Option3[,i],Option6[,i],alternative="two.sided")$p.value   
 
  
  Test[13,i]=1
  Test[14,i]=1 
 
  
  Test[15,i]=t.test(Option5[,i],Option6[,i],alternative="two.sided")$p.value   
}

for(i in 1:19){
  
  for(j in 1:15){
    
    if(Test[j,i]<=0.0005){
      TestSignificant4[i,j]=3
    }
    else if(Test[j,i]<=0.005){
      TestSignificant4[i,j]=2
    }
    else if(Test[j,i]<=0.05){
      TestSignificant4[i,j]=1
    }
    else{
      TestSignificant4[i,j]=0
    }
    
  }
  
}