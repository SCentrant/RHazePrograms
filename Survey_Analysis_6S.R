graphics.off()
par(mfrow=c(3,3))

hist(Survey$Q10[Survey$Q6==1])
hist(Survey$Q10[Survey$Q6==2])
hist(Survey$Q10[Survey$Q6==3])


hist(Survey$Q24[Survey$Q6==1])
hist(Survey$Q24[Survey$Q6==2])
hist(Survey$Q24[Survey$Q6==3])


hist(Survey$Q28[Survey$Q6==1])
hist(Survey$Q28[Survey$Q6==2])
hist(Survey$Q28[Survey$Q6==3])