graphics.off()
rm(list=ls())


library(readr)
Survey <- read_csv("Survey_single_choice.csv")


Clustering = array(dim=c(1233,3))


Clustering[,1] = Survey$Q13
Clustering[,2] = Survey$Q14
Clustering[,3] = Survey$Q17

Clustering[Clustering[,1]==3,1] = 2
Clustering[Clustering[,1]==5,1] = 2
Clustering[Clustering[,1]==4,1] = 3

Clustering[Clustering[,2]==3,2] = 2
Clustering[Clustering[,2]==5,2] = 2
Clustering[Clustering[,2]==4,2] = 3

Clustering[Clustering[,3]==2,3] = 3
Clustering[Clustering[,3]==5,3] = 2

Graph=prcomp(Clustering, scale=TRUE)
biplot(Graph, scale=0)

Points = array(dim=c(1233,2))

Points[,1] = Graph$x[,1]
Points[,2] = Graph$x[,2]

length(Survey$Q16[Survey$Q3==5&Survey$Q16==3])/length(Survey$Q16[Survey$Q3==5])

