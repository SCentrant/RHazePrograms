graphics.off()
par(mfrow=c(2,3))

hist(Survey$Q8[Survey$Q4==1])
hist(Survey$Q8[Survey$Q4==2])
hist(Survey$Q8[Survey$Q4==3])
hist(Survey$Q8[Survey$Q4==5])
hist(Survey$Q8[Survey$Q4==6])


graphics.off()
par(mfrow=c(2,3))

hist(Survey$Q10[Survey$Q4==1])
hist(Survey$Q10[Survey$Q4==2])
hist(Survey$Q10[Survey$Q4==3])
hist(Survey$Q10[Survey$Q4==5])
hist(Survey$Q10[Survey$Q4==6])


graphics.off()
par(mfrow=c(2,3))

hist(Survey$Q15[Survey$Q4==1])
hist(Survey$Q15[Survey$Q4==2])
hist(Survey$Q15[Survey$Q4==3])
hist(Survey$Q15[Survey$Q4==5])
hist(Survey$Q15[Survey$Q4==6])