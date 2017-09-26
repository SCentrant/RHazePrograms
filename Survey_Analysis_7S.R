graphics.off()
par(mfrow=c(2,4))

hist(Survey$Q8[Survey$Q7==1])
hist(Survey$Q8[Survey$Q7==2])
hist(Survey$Q8[Survey$Q7==3])
hist(Survey$Q8[Survey$Q7==4])
hist(Survey$Q8[Survey$Q7==5])
hist(Survey$Q8[Survey$Q7==7])
hist(Survey$Q8[Survey$Q7==8])


graphics.off()
par(mfrow=c(2,4))

hist(Survey$Q19[Survey$Q7==1])
hist(Survey$Q19[Survey$Q7==2])
hist(Survey$Q19[Survey$Q7==3])
hist(Survey$Q19[Survey$Q7==4])
hist(Survey$Q19[Survey$Q7==5])
hist(Survey$Q19[Survey$Q7==7])
hist(Survey$Q19[Survey$Q7==8])


graphics.off()
par(mfrow=c(2,4))

hist(Survey$Q28[Survey$Q7==1])
hist(Survey$Q28[Survey$Q7==2])
hist(Survey$Q28[Survey$Q7==3])
hist(Survey$Q28[Survey$Q7==4])
hist(Survey$Q28[Survey$Q7==5])
hist(Survey$Q28[Survey$Q7==7])
hist(Survey$Q28[Survey$Q7==8])