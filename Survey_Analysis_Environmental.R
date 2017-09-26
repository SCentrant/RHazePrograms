setwd("~/R")
rm(list = ls())
library(readr)
Survey <- read_csv("Survey_single_choice.csv")

Analysis = array(dim=c(424,7))

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


TotalPercent = array(dim=c(7,12),data=0)
Percent = array(dim=c(7,12),data=0)
FinalPercent = array(dim=c(7,12),data=0)
LevelofConcern = array(dim=c(7,12),data=0)


for(x in 1:424){
  
  for(y in 1:7){
    
    Analysis[x,y]=Survey_F4[x,y]
    
  }
  
  {
    if(Analysis[x,1]==1){
      Percent[1,1]=Percent[1,1]+1/424
    }
    else{
      Percent[1,2]=Percent[1,2]+1/424
    }
  }
  
  {
    if(Analysis[x,2]==1){
      Percent[2,1]=Percent[2,1]+1/424
    }
    else if(Analysis[x,2]==2){
      Percent[2,2]=Percent[2,2]+1/424
    }
    else{
      Percent[2,3]=Percent[2,3]+1/424
    }
  }
  
  {
    if(Analysis[x,3]==1){
      Percent[3,1]=Percent[3,1]+1/424
    }
    else if(Analysis[x,3]==2){
      Percent[3,2]=Percent[3,2]+1/424
    }
    else if(Analysis[x,3]==3){
      Percent[3,3]=Percent[3,3]+1/424
    }
    else if(Analysis[x,3]==4){
      Percent[3,4]=Percent[3,4]+1/424
    }
    else{
      Percent[3,5]=Percent[3,5]+1/424
    }
  }
  
  {
    if(Analysis[x,4]==1){
      Percent[4,1]=Percent[4,1]+1/424
    }
    else if(Analysis[x,4]==2){
      Percent[4,2]=Percent[4,2]+1/424
    }
    else if(Analysis[x,4]==3){
      Percent[4,3]=Percent[4,3]+1/424
    }
    else if(Analysis[x,4]==4){
      Percent[4,4]=Percent[4,4]+1/424
    }
    else if(Analysis[x,4]==5){
      Percent[4,5]=Percent[4,5]+1/424
    }
    else{
      Percent[4,6]=Percent[4,6]+1/424
    }
  }
  
  {
    if(Analysis[x,5]==1){
      Percent[5,1]=Percent[5,1]+1/424
    }
    else if(Analysis[x,5]==2){
      Percent[5,2]=Percent[5,2]+1/424
    }
    else if(Analysis[x,5]==3){
      Percent[5,3]=Percent[5,3]+1/424
    }
    else if(Analysis[x,5]==4){
      Percent[5,4]=Percent[5,4]+1/424
    }
    else if(Analysis[x,5]==5){
      Percent[5,5]=Percent[5,5]+1/424
    }
    else if(Analysis[x,5]==6){
      Percent[5,6]=Percent[5,6]+1/424
    }
    else if(Analysis[x,5]==7){
      Percent[5,7]=Percent[5,7]+1/424
    }
    else if(Analysis[x,5]==8){
      Percent[5,8]=Percent[5,8]+1/424
    }
    else if(Analysis[x,5]==9){
      Percent[5,9]=Percent[5,9]+1/424
    }
    else if(Analysis[x,5]==10){
      Percent[5,10]=Percent[5,10]+1/424
    }
    else if(Analysis[x,5]==11){
      Percent[5,11]=Percent[5,11]+1/424
    }
    else{
      Percent[5,12]=Percent[5,12]+1/424
    }
  }
  
  {
    if(Analysis[x,6]==1){
      Percent[6,1]=Percent[6,1]+1/424
    }
    else if(Analysis[x,6]==2){
      Percent[6,2]=Percent[6,2]+1/424
    }
    else{
      Percent[6,3]=Percent[6,3]+1/424
    }
  }
  
  {
    if(Analysis[x,7]==1){
      Percent[7,1]=Percent[7,1]+1/424
    }
    else if(Analysis[x,7]==2){
      Percent[7,2]=Percent[7,2]+1/424
    }
    else if(Analysis[x,7]==3){
      Percent[7,3]=Percent[7,3]+1/424
    }
    else if(Analysis[x,7]==4){
      Percent[7,4]=Percent[7,4]+1/424
    }
    else if(Analysis[x,7]==5){
      Percent[7,5]=Percent[7,5]+1/424
    }
    else if(Analysis[x,7]==6){
      Percent[7,6]=Percent[7,6]+1/424
    }
    else if(Analysis[x,7]==7){
      Percent[7,7]=Percent[7,7]+1/424
    }
    else{
      Percent[7,8]=Percent[7,8]+1/424
    }
  }
}


for(x in 1:1233){
  
  {
    if(Survey[x,1]==1){
      TotalPercent[1,1]=TotalPercent[1,1]+1/1233
    }
    else{
      TotalPercent[1,2]=TotalPercent[1,2]+1/1233
    }
  }
  
  {
    if(Survey[x,2]==1){
      TotalPercent[2,1]=TotalPercent[2,1]+1/1233
    }
    else if(Survey[x,2]==2){
      TotalPercent[2,2]=TotalPercent[2,2]+1/1233
    }
    else{
      TotalPercent[2,3]=TotalPercent[2,3]+1/1233
    }
  }
  
  {
    if(Survey[x,3]==1){
      TotalPercent[3,1]=TotalPercent[3,1]+1/1233
    }
    else if(Survey[x,3]==2){
      TotalPercent[3,2]=TotalPercent[3,2]+1/1233
    }
    else if(Survey[x,3]==3){
      TotalPercent[3,3]=TotalPercent[3,3]+1/1233
    }
    else if(Survey[x,3]==4){
      TotalPercent[3,4]=TotalPercent[3,4]+1/1233
    }
    else{
      TotalPercent[3,5]=TotalPercent[3,5]+1/1233
    }
  }
  
  {
    if(Survey[x,4]==1){
      TotalPercent[4,1]=TotalPercent[4,1]+1/1233
    }
    else if(Survey[x,4]==2){
      TotalPercent[4,2]=TotalPercent[4,2]+1/1233
    }
    else if(Survey[x,4]==3){
      TotalPercent[4,3]=TotalPercent[4,3]+1/1233
    }
    else if(Survey[x,4]==4){
      TotalPercent[4,4]=TotalPercent[4,4]+1/1233
    }
    else if(Survey[x,4]==5){
      TotalPercent[4,5]=TotalPercent[4,5]+1/1233
    }
    else{
      TotalPercent[4,6]=TotalPercent[4,6]+1/1233
    }
  }
  
  {
    if(Survey[x,5]==1){
      TotalPercent[5,1]=TotalPercent[5,1]+1/1233
    }
    else if(Survey[x,5]==2){
      TotalPercent[5,2]=TotalPercent[5,2]+1/1233
    }
    else if(Survey[x,5]==3){
      TotalPercent[5,3]=TotalPercent[5,3]+1/1233
    }
    else if(Survey[x,5]==4){
      TotalPercent[5,4]=TotalPercent[5,4]+1/1233
    }
    else if(Survey[x,5]==5){
      TotalPercent[5,5]=TotalPercent[5,5]+1/1233
    }
    else if(Survey[x,5]==6){
      TotalPercent[5,6]=TotalPercent[5,6]+1/1233
    }
    else if(Survey[x,5]==7){
      TotalPercent[5,7]=TotalPercent[5,7]+1/1233
    }
    else if(Survey[x,5]==8){
      TotalPercent[5,8]=TotalPercent[5,8]+1/1233
    }
    else if(Survey[x,5]==9){
      TotalPercent[5,9]=TotalPercent[5,9]+1/1233
    }
    else if(Survey[x,5]==10){
      TotalPercent[5,10]=TotalPercent[5,10]+1/1233
    }
    else if(Survey[x,5]==11){
      TotalPercent[5,11]=TotalPercent[5,11]+1/1233
    }
    else{
      TotalPercent[5,12]=TotalPercent[5,12]+1/1233
    }
  }
  
  {
    if(Survey[x,6]==1){
      TotalPercent[6,1]=TotalPercent[6,1]+1/1233
    }
    else if(Survey[x,6]==2){
      TotalPercent[6,2]=TotalPercent[6,2]+1/1233
    }
    else{
      TotalPercent[6,3]=TotalPercent[6,3]+1/1233
    }
  }
  
  {
    if(Survey[x,7]==1){
      TotalPercent[7,1]=TotalPercent[7,1]+1/1233
    }
    else if(Survey[x,7]==2){
      TotalPercent[7,2]=TotalPercent[7,2]+1/1233
    }
    else if(Survey[x,7]==3){
      TotalPercent[7,3]=TotalPercent[7,3]+1/1233
    }
    else if(Survey[x,7]==4){
      TotalPercent[7,4]=TotalPercent[7,4]+1/1233
    }
    else if(Survey[x,7]==5){
      TotalPercent[7,5]=TotalPercent[7,5]+1/1233
    }
    else if(Survey[x,7]==6){
      TotalPercent[7,6]=TotalPercent[7,6]+1/1233
    }
    else if(Survey[x,7]==7){
      TotalPercent[7,7]=TotalPercent[7,7]+1/1233
    }
    else{
      TotalPercent[7,8]=TotalPercent[7,8]+1/1233
    }
  }
}


for(x in 1:7){
  
  for(y in 1:12){
    
    if(TotalPercent[x,y]!=0){
      FinalPercent[x,y]=Percent[x,y]/TotalPercent[x,y]
    }
    else{
      FinalPercent[x,y]=0
    }
    
  }
  
}

for(x in 1:7){
  
  for(y in 1:12){
    
    if(FinalPercent[x,y]!=0){
      
      if(FinalPercent[x,y]<0.5){
        LevelofConcern[x,y]=-3
      }
      else if(FinalPercent[x,y]<0.769){
        LevelofConcern[x,y]=-2
      }
      else if(FinalPercent[x,y]<0.909){
        LevelofConcern[x,y]=-1
      }
      else if(FinalPercent[x,y]>2){
        LevelofConcern[x,y]=3
      }
      else if(FinalPercent[x,y]>1.3){
        LevelofConcern[x,y]=2
      }
      else if(FinalPercent[x,y]>1.1){
        LevelofConcern[x,y]=1
      }
      else{
        LevelofConcern[x,y]=0
      }
      
    }

  }
  
}