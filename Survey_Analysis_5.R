setwd("~/R")
rm(list = ls())
library(readr)
Survey <- read_csv("Survey_single_choice.csv")


Option1 = array(dim=c(sum(Survey$Q5[Survey$Q5==1]/1),19))
Option2 = array(dim=c(sum(Survey$Q5[Survey$Q5==2]/2),19))
Option3 = array(dim=c(sum(Survey$Q5[Survey$Q5==3]/3),19))
Option4 = array(dim=c(sum(Survey$Q5[Survey$Q5==4]/4),19))
Option5 = array(dim=c(sum(Survey$Q5[Survey$Q5==5]/5),19))
Option6 = array(dim=c(sum(Survey$Q5[Survey$Q5==6]/6),19))
Option7 = array(dim=c(sum(Survey$Q5[Survey$Q5==7]/7),19))
Option8 = array(dim=c(sum(Survey$Q5[Survey$Q5==8]/8),19))
Option9 = array(dim=c(sum(Survey$Q5[Survey$Q5==9]/9),19))
Option10 = array(dim=c(sum(Survey$Q5[Survey$Q5==10]/10),19))
Option11 = array(dim=c(sum(Survey$Q5[Survey$Q5==11]/11),19))
Option12 = array(dim=c(sum(Survey$Q5[Survey$Q5==12]/12),19))



i=1
{
  Option1[,1] = Survey$Q8[Survey$Q5==i]
  Option1[,2] = Survey$Q9[Survey$Q5==i]
  Option1[,3] = Survey$Q10[Survey$Q5==i]
  Option1[,4] = Survey$Q11[Survey$Q5==i]
  Option1[,5] = Survey$Q12[Survey$Q5==i]
  Option1[,6] = Survey$Q13[Survey$Q5==i]
  Option1[,7] = Survey$Q14[Survey$Q5==i]
  Option1[,8] = Survey$Q15[Survey$Q5==i]
  Option1[,9] = Survey$Q16[Survey$Q5==i]
  Option1[,10] = Survey$Q17[Survey$Q5==i]
  Option1[,11] = Survey$Q19[Survey$Q5==i]
  Option1[,12] = Survey$Q20[Survey$Q5==i]
  Option1[,13] = Survey$Q21[Survey$Q5==i]
  Option1[,14] = Survey$Q22[Survey$Q5==i]
  Option1[,15] = Survey$Q23[Survey$Q5==i]
  Option1[,16] = Survey$Q24[Survey$Q5==i]
  Option1[,17] = Survey$Q25[Survey$Q5==i]
  Option1[,18] = Survey$Q26[Survey$Q5==i]
  Option1[,19] = Survey$Q28[Survey$Q5==i]
}

i=2
{
  Option2[,1] = Survey$Q8[Survey$Q5==i]
  Option2[,2] = Survey$Q9[Survey$Q5==i]
  Option2[,3] = Survey$Q10[Survey$Q5==i]
  Option2[,4] = Survey$Q11[Survey$Q5==i]
  Option2[,5] = Survey$Q12[Survey$Q5==i]
  Option2[,6] = Survey$Q13[Survey$Q5==i]
  Option2[,7] = Survey$Q14[Survey$Q5==i]
  Option2[,8] = Survey$Q15[Survey$Q5==i]
  Option2[,9] = Survey$Q16[Survey$Q5==i]
  Option2[,10] = Survey$Q17[Survey$Q5==i]
  Option2[,11] = Survey$Q19[Survey$Q5==i]
  Option2[,12] = Survey$Q20[Survey$Q5==i]
  Option2[,13] = Survey$Q21[Survey$Q5==i]
  Option2[,14] = Survey$Q22[Survey$Q5==i]
  Option2[,15] = Survey$Q23[Survey$Q5==i]
  Option2[,16] = Survey$Q24[Survey$Q5==i]
  Option2[,17] = Survey$Q25[Survey$Q5==i]
  Option2[,18] = Survey$Q26[Survey$Q5==i]
  Option2[,19] = Survey$Q28[Survey$Q5==i]
}

i=3
{
  Option3[,1] = Survey$Q8[Survey$Q5==i]
  Option3[,2] = Survey$Q9[Survey$Q5==i]
  Option3[,3] = Survey$Q10[Survey$Q5==i]
  Option3[,4] = Survey$Q11[Survey$Q5==i]
  Option3[,5] = Survey$Q12[Survey$Q5==i]
  Option3[,6] = Survey$Q13[Survey$Q5==i]
  Option3[,7] = Survey$Q14[Survey$Q5==i]
  Option3[,8] = Survey$Q15[Survey$Q5==i]
  Option3[,9] = Survey$Q16[Survey$Q5==i]
  Option3[,10] = Survey$Q17[Survey$Q5==i]
  Option3[,11] = Survey$Q19[Survey$Q5==i]
  Option3[,12] = Survey$Q20[Survey$Q5==i]
  Option3[,13] = Survey$Q21[Survey$Q5==i]
  Option3[,14] = Survey$Q22[Survey$Q5==i]
  Option3[,15] = Survey$Q23[Survey$Q5==i]
  Option3[,16] = Survey$Q24[Survey$Q5==i]
  Option3[,17] = Survey$Q25[Survey$Q5==i]
  Option3[,18] = Survey$Q26[Survey$Q5==i]
  Option3[,19] = Survey$Q28[Survey$Q5==i]
}

i=4
{
  Option4[,1] = Survey$Q8[Survey$Q5==i]
  Option4[,2] = Survey$Q9[Survey$Q5==i]
  Option4[,3] = Survey$Q10[Survey$Q5==i]
  Option4[,4] = Survey$Q11[Survey$Q5==i]
  Option4[,5] = Survey$Q12[Survey$Q5==i]
  Option4[,6] = Survey$Q13[Survey$Q5==i]
  Option4[,7] = Survey$Q14[Survey$Q5==i]
  Option4[,8] = Survey$Q15[Survey$Q5==i]
  Option4[,9] = Survey$Q16[Survey$Q5==i]
  Option4[,10] = Survey$Q17[Survey$Q5==i]
  Option4[,11] = Survey$Q19[Survey$Q5==i]
  Option4[,12] = Survey$Q20[Survey$Q5==i]
  Option4[,13] = Survey$Q21[Survey$Q5==i]
  Option4[,14] = Survey$Q22[Survey$Q5==i]
  Option4[,15] = Survey$Q23[Survey$Q5==i]
  Option4[,16] = Survey$Q24[Survey$Q5==i]
  Option4[,17] = Survey$Q25[Survey$Q5==i]
  Option4[,18] = Survey$Q26[Survey$Q5==i]
  Option4[,19] = Survey$Q28[Survey$Q5==i]
}

i=5
{
  Option5[,1] = Survey$Q8[Survey$Q5==i]
  Option5[,2] = Survey$Q9[Survey$Q5==i]
  Option5[,3] = Survey$Q10[Survey$Q5==i]
  Option5[,4] = Survey$Q11[Survey$Q5==i]
  Option5[,5] = Survey$Q12[Survey$Q5==i]
  Option5[,6] = Survey$Q13[Survey$Q5==i]
  Option5[,7] = Survey$Q14[Survey$Q5==i]
  Option5[,8] = Survey$Q15[Survey$Q5==i]
  Option5[,9] = Survey$Q16[Survey$Q5==i]
  Option5[,10] = Survey$Q17[Survey$Q5==i]
  Option5[,11] = Survey$Q19[Survey$Q5==i]
  Option5[,12] = Survey$Q20[Survey$Q5==i]
  Option5[,13] = Survey$Q21[Survey$Q5==i]
  Option5[,14] = Survey$Q22[Survey$Q5==i]
  Option5[,15] = Survey$Q23[Survey$Q5==i]
  Option5[,16] = Survey$Q24[Survey$Q5==i]
  Option5[,17] = Survey$Q25[Survey$Q5==i]
  Option5[,18] = Survey$Q26[Survey$Q5==i]
  Option5[,19] = Survey$Q28[Survey$Q5==i]
}

i=6
{
  Option6[,1] = Survey$Q8[Survey$Q5==i]
  Option6[,2] = Survey$Q9[Survey$Q5==i]
  Option6[,3] = Survey$Q10[Survey$Q5==i]
  Option6[,4] = Survey$Q11[Survey$Q5==i]
  Option6[,5] = Survey$Q12[Survey$Q5==i]
  Option6[,6] = Survey$Q13[Survey$Q5==i]
  Option6[,7] = Survey$Q14[Survey$Q5==i]
  Option6[,8] = Survey$Q15[Survey$Q5==i]
  Option6[,9] = Survey$Q16[Survey$Q5==i]
  Option6[,10] = Survey$Q17[Survey$Q5==i]
  Option6[,11] = Survey$Q19[Survey$Q5==i]
  Option6[,12] = Survey$Q20[Survey$Q5==i]
  Option6[,13] = Survey$Q21[Survey$Q5==i]
  Option6[,14] = Survey$Q22[Survey$Q5==i]
  Option6[,15] = Survey$Q23[Survey$Q5==i]
  Option6[,16] = Survey$Q24[Survey$Q5==i]
  Option6[,17] = Survey$Q25[Survey$Q5==i]
  Option6[,18] = Survey$Q26[Survey$Q5==i]
  Option6[,19] = Survey$Q28[Survey$Q5==i]
}

i=7
{
  Option7[,1] = Survey$Q8[Survey$Q5==i]
  Option7[,2] = Survey$Q9[Survey$Q5==i]
  Option7[,3] = Survey$Q10[Survey$Q5==i]
  Option7[,4] = Survey$Q11[Survey$Q5==i]
  Option7[,5] = Survey$Q12[Survey$Q5==i]
  Option7[,6] = Survey$Q13[Survey$Q5==i]
  Option7[,7] = Survey$Q14[Survey$Q5==i]
  Option7[,8] = Survey$Q15[Survey$Q5==i]
  Option7[,9] = Survey$Q16[Survey$Q5==i]
  Option7[,10] = Survey$Q17[Survey$Q5==i]
  Option7[,11] = Survey$Q19[Survey$Q5==i]
  Option7[,12] = Survey$Q20[Survey$Q5==i]
  Option7[,13] = Survey$Q21[Survey$Q5==i]
  Option7[,14] = Survey$Q22[Survey$Q5==i]
  Option7[,15] = Survey$Q23[Survey$Q5==i]
  Option7[,16] = Survey$Q24[Survey$Q5==i]
  Option7[,17] = Survey$Q25[Survey$Q5==i]
  Option7[,18] = Survey$Q26[Survey$Q5==i]
  Option7[,19] = Survey$Q28[Survey$Q5==i]
}

i=8
{
  Option8[,1] = Survey$Q8[Survey$Q5==i]
  Option8[,2] = Survey$Q9[Survey$Q5==i]
  Option8[,3] = Survey$Q10[Survey$Q5==i]
  Option8[,4] = Survey$Q11[Survey$Q5==i]
  Option8[,5] = Survey$Q12[Survey$Q5==i]
  Option8[,6] = Survey$Q13[Survey$Q5==i]
  Option8[,7] = Survey$Q14[Survey$Q5==i]
  Option8[,8] = Survey$Q15[Survey$Q5==i]
  Option8[,9] = Survey$Q16[Survey$Q5==i]
  Option8[,10] = Survey$Q17[Survey$Q5==i]
  Option8[,11] = Survey$Q19[Survey$Q5==i]
  Option8[,12] = Survey$Q20[Survey$Q5==i]
  Option8[,13] = Survey$Q21[Survey$Q5==i]
  Option8[,14] = Survey$Q22[Survey$Q5==i]
  Option8[,15] = Survey$Q23[Survey$Q5==i]
  Option8[,16] = Survey$Q24[Survey$Q5==i]
  Option8[,17] = Survey$Q25[Survey$Q5==i]
  Option8[,18] = Survey$Q26[Survey$Q5==i]
  Option8[,19] = Survey$Q28[Survey$Q5==i]
}

i=9
{
  Option9[,1] = Survey$Q8[Survey$Q5==i]
  Option9[,2] = Survey$Q9[Survey$Q5==i]
  Option9[,3] = Survey$Q10[Survey$Q5==i]
  Option9[,4] = Survey$Q11[Survey$Q5==i]
  Option9[,5] = Survey$Q12[Survey$Q5==i]
  Option9[,6] = Survey$Q13[Survey$Q5==i]
  Option9[,7] = Survey$Q14[Survey$Q5==i]
  Option9[,8] = Survey$Q15[Survey$Q5==i]
  Option9[,9] = Survey$Q16[Survey$Q5==i]
  Option9[,10] = Survey$Q17[Survey$Q5==i]
  Option9[,11] = Survey$Q19[Survey$Q5==i]
  Option9[,12] = Survey$Q20[Survey$Q5==i]
  Option9[,13] = Survey$Q21[Survey$Q5==i]
  Option9[,14] = Survey$Q22[Survey$Q5==i]
  Option9[,15] = Survey$Q23[Survey$Q5==i]
  Option9[,16] = Survey$Q24[Survey$Q5==i]
  Option9[,17] = Survey$Q25[Survey$Q5==i]
  Option9[,18] = Survey$Q26[Survey$Q5==i]
  Option9[,19] = Survey$Q28[Survey$Q5==i]
}

i=10
{
  Option10[,1] = Survey$Q8[Survey$Q5==i]
  Option10[,2] = Survey$Q9[Survey$Q5==i]
  Option10[,3] = Survey$Q10[Survey$Q5==i]
  Option10[,4] = Survey$Q11[Survey$Q5==i]
  Option10[,5] = Survey$Q12[Survey$Q5==i]
  Option10[,6] = Survey$Q13[Survey$Q5==i]
  Option10[,7] = Survey$Q14[Survey$Q5==i]
  Option10[,8] = Survey$Q15[Survey$Q5==i]
  Option10[,9] = Survey$Q16[Survey$Q5==i]
  Option10[,10] = Survey$Q17[Survey$Q5==i]
  Option10[,11] = Survey$Q19[Survey$Q5==i]
  Option10[,12] = Survey$Q20[Survey$Q5==i]
  Option10[,13] = Survey$Q21[Survey$Q5==i]
  Option10[,14] = Survey$Q22[Survey$Q5==i]
  Option10[,15] = Survey$Q23[Survey$Q5==i]
  Option10[,16] = Survey$Q24[Survey$Q5==i]
  Option10[,17] = Survey$Q25[Survey$Q5==i]
  Option10[,18] = Survey$Q26[Survey$Q5==i]
  Option10[,19] = Survey$Q28[Survey$Q5==i]
}

i=11
{
  Option11[,1] = Survey$Q8[Survey$Q5==i]
  Option11[,2] = Survey$Q9[Survey$Q5==i]
  Option11[,3] = Survey$Q10[Survey$Q5==i]
  Option11[,4] = Survey$Q11[Survey$Q5==i]
  Option11[,5] = Survey$Q12[Survey$Q5==i]
  Option11[,6] = Survey$Q13[Survey$Q5==i]
  Option11[,7] = Survey$Q14[Survey$Q5==i]
  Option11[,8] = Survey$Q15[Survey$Q5==i]
  Option11[,9] = Survey$Q16[Survey$Q5==i]
  Option11[,10] = Survey$Q17[Survey$Q5==i]
  Option11[,11] = Survey$Q19[Survey$Q5==i]
  Option11[,12] = Survey$Q20[Survey$Q5==i]
  Option11[,13] = Survey$Q21[Survey$Q5==i]
  Option11[,14] = Survey$Q22[Survey$Q5==i]
  Option11[,15] = Survey$Q23[Survey$Q5==i]
  Option11[,16] = Survey$Q24[Survey$Q5==i]
  Option11[,17] = Survey$Q25[Survey$Q5==i]
  Option11[,18] = Survey$Q26[Survey$Q5==i]
  Option11[,19] = Survey$Q28[Survey$Q5==i]
}

i=12
{
  Option12[,1] = Survey$Q8[Survey$Q5==i]
  Option12[,2] = Survey$Q9[Survey$Q5==i]
  Option12[,3] = Survey$Q10[Survey$Q5==i]
  Option12[,4] = Survey$Q11[Survey$Q5==i]
  Option12[,5] = Survey$Q12[Survey$Q5==i]
  Option12[,6] = Survey$Q13[Survey$Q5==i]
  Option12[,7] = Survey$Q14[Survey$Q5==i]
  Option12[,8] = Survey$Q15[Survey$Q5==i]
  Option12[,9] = Survey$Q16[Survey$Q5==i]
  Option12[,10] = Survey$Q17[Survey$Q5==i]
  Option12[,11] = Survey$Q19[Survey$Q5==i]
  Option12[,12] = Survey$Q20[Survey$Q5==i]
  Option12[,13] = Survey$Q21[Survey$Q5==i]
  Option12[,14] = Survey$Q22[Survey$Q5==i]
  Option12[,15] = Survey$Q23[Survey$Q5==i]
  Option12[,16] = Survey$Q24[Survey$Q5==i]
  Option12[,17] = Survey$Q25[Survey$Q5==i]
  Option12[,18] = Survey$Q26[Survey$Q5==i]
  Option12[,19] = Survey$Q28[Survey$Q5==i]
}


#T-Tests
{
  t.test(Option1,Option2,alternative="two.sided")   ###
  t.test(Option1,Option3,alternative="two.sided")   ##
  t.test(Option1,Option4,alternative="two.sided")   ##
  t.test(Option1,Option5,alternative="two.sided")   #
  t.test(Option1,Option6,alternative="two.sided")   #
  t.test(Option1,Option7,alternative="two.sided")   ###
  t.test(Option1,Option8,alternative="two.sided")   ###
  t.test(Option1,Option9,alternative="two.sided")   ###
  t.test(Option1,Option10,alternative="two.sided")  ###
  t.test(Option1,Option11,alternative="two.sided")  ##
  t.test(Option1,Option12,alternative="two.sided")  ###
  
  t.test(Option2,Option3,alternative="two.sided")   
  t.test(Option2,Option4,alternative="two.sided")   
  t.test(Option2,Option5,alternative="two.sided")   
  t.test(Option2,Option6,alternative="two.sided")   
  t.test(Option2,Option7,alternative="two.sided")   
  t.test(Option2,Option8,alternative="two.sided")   
  t.test(Option2,Option9,alternative="two.sided")   
  t.test(Option2,Option10,alternative="two.sided")  
  t.test(Option2,Option11,alternative="two.sided")  
  t.test(Option2,Option12,alternative="two.sided")  
  
  t.test(Option3,Option4,alternative="two.sided")   
  t.test(Option3,Option5,alternative="two.sided")   
  t.test(Option3,Option6,alternative="two.sided")   
  t.test(Option3,Option7,alternative="two.sided")   #
  t.test(Option3,Option8,alternative="two.sided")   ##
  t.test(Option3,Option9,alternative="two.sided")   
  t.test(Option3,Option10,alternative="two.sided")  ##
  t.test(Option3,Option11,alternative="two.sided")  
  t.test(Option3,Option12,alternative="two.sided")  #
  
  t.test(Option4,Option5,alternative="two.sided")   
  t.test(Option4,Option6,alternative="two.sided")   
  t.test(Option4,Option7,alternative="two.sided")   
  t.test(Option4,Option8,alternative="two.sided")   
  t.test(Option4,Option9,alternative="two.sided")   
  t.test(Option4,Option10,alternative="two.sided")  
  t.test(Option4,Option11,alternative="two.sided")  
  t.test(Option4,Option12,alternative="two.sided")  
  
  t.test(Option5,Option6,alternative="two.sided")   
  t.test(Option5,Option7,alternative="two.sided")   
  t.test(Option5,Option8,alternative="two.sided")   
  t.test(Option5,Option9,alternative="two.sided")   
  t.test(Option5,Option10,alternative="two.sided")  
  t.test(Option5,Option11,alternative="two.sided")  
  t.test(Option5,Option12,alternative="two.sided")  
  
  t.test(Option6,Option7,alternative="two.sided")   
  t.test(Option6,Option8,alternative="two.sided")   
  t.test(Option6,Option9,alternative="two.sided")   
  t.test(Option6,Option10,alternative="two.sided")  
  t.test(Option6,Option11,alternative="two.sided")  
  t.test(Option6,Option12,alternative="two.sided")  
  
  t.test(Option7,Option8,alternative="two.sided")   
  t.test(Option7,Option9,alternative="two.sided")   
  t.test(Option7,Option10,alternative="two.sided")  
  t.test(Option7,Option11,alternative="two.sided")  #
  t.test(Option7,Option12,alternative="two.sided")  
  
  t.test(Option8,Option9,alternative="two.sided")   
  t.test(Option8,Option10,alternative="two.sided")  
  t.test(Option8,Option11,alternative="two.sided")  #
  t.test(Option8,Option12,alternative="two.sided")  
  
  t.test(Option9,Option10,alternative="two.sided")  
  t.test(Option9,Option11,alternative="two.sided")  
  t.test(Option9,Option12,alternative="two.sided")  
  
  t.test(Option10,Option11,alternative="two.sided") #
  t.test(Option10,Option12,alternative="two.sided") 
  
  t.test(Option11,Option12,alternative="two.sided") 
}

Test = array(dim=c(66,19))
TestSignificant5 = array(dim=c(19,66))

for(i in 1:19){
  Test[1,i]=t.test(Option1[,i],Option2[,i],alternative="two.sided")$p.value    ###
  Test[2,i]=t.test(Option1[,i],Option3[,i],alternative="two.sided")$p.value    ##
  Test[3,i]=t.test(Option1[,i],Option4[,i],alternative="two.sided")$p.value    ##
  Test[4,i]=t.test(Option1[,i],Option5[,i],alternative="two.sided")$p.value    #
  Test[5,i]=t.test(Option1[,i],Option6[,i],alternative="two.sided")$p.value    #
  Test[6,i]=t.test(Option1[,i],Option7[,i],alternative="two.sided")$p.value    ###
  Test[7,i]=t.test(Option1[,i],Option8[,i],alternative="two.sided")$p.value    ###
  Test[8,i]=t.test(Option1[,i],Option9[,i],alternative="two.sided")$p.value    ###
  Test[9,i]=t.test(Option1[,i],Option10[,i],alternative="two.sided")$p.value   ###
  Test[10,i]=t.test(Option1[,i],Option11[,i],alternative="two.sided")$p.value  ##
  Test[11,i]=t.test(Option1[,i],Option12[,i],alternative="two.sided")$p.value  ###
  
  Test[12,i]=t.test(Option2[,i],Option3[,i],alternative="two.sided")$p.value   
  Test[13,i]=t.test(Option2[,i],Option4[,i],alternative="two.sided")$p.value   
  Test[14,i]=t.test(Option2[,i],Option5[,i],alternative="two.sided")$p.value   
  Test[15,i]=t.test(Option2[,i],Option6[,i],alternative="two.sided")$p.value   
  Test[16,i]=t.test(Option2[,i],Option7[,i],alternative="two.sided")$p.value   
  Test[17,i]=t.test(Option2[,i],Option8[,i],alternative="two.sided")$p.value   
  Test[18,i]=t.test(Option2[,i],Option9[,i],alternative="two.sided")$p.value   
  Test[19,i]=t.test(Option2[,i],Option10[,i],alternative="two.sided")$p.value  
  Test[20,i]=t.test(Option2[,i],Option11[,i],alternative="two.sided")$p.value  
  Test[21,i]=t.test(Option2[,i],Option12[,i],alternative="two.sided")$p.value  
  
  Test[22,i]=t.test(Option3[,i],Option4[,i],alternative="two.sided")$p.value   
  Test[23,i]=t.test(Option3[,i],Option5[,i],alternative="two.sided")$p.value   
  Test[24,i]=t.test(Option3[,i],Option6[,i],alternative="two.sided")$p.value   
  Test[25,i]=t.test(Option3[,i],Option7[,i],alternative="two.sided")$p.value   #
  Test[26,i]=t.test(Option3[,i],Option8[,i],alternative="two.sided")$p.value   ##
  Test[27,i]=t.test(Option3[,i],Option9[,i],alternative="two.sided")$p.value   
  Test[28,i]=t.test(Option3[,i],Option10[,i],alternative="two.sided")$p.value  ##
  Test[29,i]=t.test(Option3[,i],Option11[,i],alternative="two.sided")$p.value  
  Test[30,i]=t.test(Option3[,i],Option12[,i],alternative="two.sided")$p.value  #
  
  Test[31,i]=t.test(Option4[,i],Option5[,i],alternative="two.sided")$p.value   
  Test[32,i]=t.test(Option4[,i],Option6[,i],alternative="two.sided")$p.value   
  Test[33,i]=t.test(Option4[,i],Option7[,i],alternative="two.sided")$p.value   
  Test[34,i]=t.test(Option4[,i],Option8[,i],alternative="two.sided")$p.value   
  Test[35,i]=t.test(Option4[,i],Option9[,i],alternative="two.sided")$p.value   
  Test[36,i]=t.test(Option4[,i],Option10[,i],alternative="two.sided")$p.value  
  Test[37,i]=t.test(Option4[,i],Option11[,i],alternative="two.sided")$p.value  
  Test[38,i]=t.test(Option4[,i],Option12[,i],alternative="two.sided")$p.value  
  
  Test[39,i]=t.test(Option5[,i],Option6[,i],alternative="two.sided")$p.value   
  Test[40,i]=t.test(Option5[,i],Option7[,i],alternative="two.sided")$p.value   
  Test[41,i]=t.test(Option5[,i],Option8[,i],alternative="two.sided")$p.value   
  Test[42,i]=t.test(Option5[,i],Option9[,i],alternative="two.sided")$p.value   
  Test[43,i]=t.test(Option5[,i],Option10[,i],alternative="two.sided")$p.value  
  Test[44,i]=t.test(Option5[,i],Option11[,i],alternative="two.sided")$p.value  
  Test[45,i]=t.test(Option5[,i],Option12[,i],alternative="two.sided")$p.value  
  
  Test[46,i]=t.test(Option6[,i],Option7[,i],alternative="two.sided")$p.value   
  Test[47,i]=t.test(Option6[,i],Option8[,i],alternative="two.sided")$p.value   
  Test[48,i]=t.test(Option6[,i],Option9[,i],alternative="two.sided")$p.value   
  Test[49,i]=t.test(Option6[,i],Option10[,i],alternative="two.sided")$p.value  
  Test[50,i]=t.test(Option6[,i],Option11[,i],alternative="two.sided")$p.value  
  Test[51,i]=t.test(Option6[,i],Option12[,i],alternative="two.sided")$p.value  
  
  Test[52,i]=t.test(Option7[,i],Option8[,i],alternative="two.sided")$p.value   
  Test[53,i]=t.test(Option7[,i],Option9[,i],alternative="two.sided")$p.value   
  Test[54,i]=t.test(Option7[,i],Option10[,i],alternative="two.sided")$p.value  
  Test[55,i]=t.test(Option7[,i],Option11[,i],alternative="two.sided")$p.value  #
  Test[56,i]=t.test(Option7[,i],Option12[,i],alternative="two.sided")$p.value  
  
  Test[57,i]=t.test(Option8[,i],Option9[,i],alternative="two.sided")$p.value   
  Test[58,i]=t.test(Option8[,i],Option10[,i],alternative="two.sided")$p.value  
  Test[59,i]=t.test(Option8[,i],Option11[,i],alternative="two.sided")$p.value  #
  Test[60,i]=t.test(Option8[,i],Option12[,i],alternative="two.sided")$p.value  
  
  Test[61,i]=t.test(Option9[,i],Option10[,i],alternative="two.sided")$p.value  
  Test[62,i]=t.test(Option9[,i],Option11[,i],alternative="two.sided")$p.value  
  Test[63,i]=t.test(Option9[,i],Option12[,i],alternative="two.sided")$p.value  
  
  Test[64,i]=t.test(Option10[,i],Option11[,i],alternative="two.sided")$p.value #
  Test[65,i]=t.test(Option10[,i],Option12[,i],alternative="two.sided")$p.value 
  
  Test[66,i]=t.test(Option11[,i],Option12[,i],alternative="two.sided")$p.value 
}

for(i in 1:19){
  
  for(j in 1:66){
    
    if(Test[j,i]<=0.0005){
      TestSignificant5[i,j]=3
    }
    else if(Test[j,i]<=0.005){
      TestSignificant5[i,j]=2
    }
    else if(Test[j,i]<=0.05){
      TestSignificant5[i,j]=1
    }
    else{
      TestSignificant5[i,j]=0
    }
    
  }
  
}