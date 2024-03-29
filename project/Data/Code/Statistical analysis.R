setwd("/Users/adammcmillion/Desktop/Evolution/Tasks/Project/Data")
read.csv("Treedataset.csv")
Tree_DBH<-read.csv("Treedataset.csv")
read.csv("Meliaceae.csv")
Meliaceae<-read.csv("Meliaceae.csv")
pdf("Average DBH1&DBH2 points.pdf")
plot(Tree_DBH$Time, Tree_DBH$DBH1, pch=16, col="blue")
points(Tree_DBH$Time, Tree_DBH$DBH2, pch=16, col='black')
dev.off()
pdf("change in DBH1 and DBH2 average")
par(las=1, mar=c(3,4,1,1))
boxplot(Tree_DBH$DBH1, Tree_DBH$DBH2, boxwex=0.25, col=c("blue","black"), border="gray", names=c("DBH1", "DBH2"))
dev.off()
pdf("Histogram of change in DBHs average.pdf")
par(las=1, mar=c(3,4,1,1))
hist(Tree_DBH$DBH2-Tree_DBH$DBH1, col='black', border='white', main="", xlab="change in DBH", xlim=c(-2,1))
dev.off()
  

#Null hypothesis:Tree diameter will not increase in size as generations pass
#Alternative Hypothesis: Tree diameter will increase in size as generations pass on!

library(ggplot2)
View(Tree_DBH)
pdf("Tree DBH1 Statistical analysis.pdf")
ggplot(Tree_DBH,aes(Time,DBH1))+
  geom_point(size=3)+
  aes(colour=Family)+
  labs(title="Tree DBH1")+
  theme_linedraw()+
theme(legend.key.size = unit(1,'cm'),
      legend.key.height = unit(1,'cm'),
      legend.key.width = unit(1,'cm'),
      legend.title=element_text(size=7),
      legend.text=element_text(size=6))+
  theme(legend.position = "bottom")
dev.off()
pdf("Tree DBH2 Statistical analysis.pdf")
ggplot(Tree_DBH,aes(Time,DBH2))+
  geom_point(size=3)+
    aes(colour=Family)+
  labs(title="Tree DBH2")+
  theme_linedraw()+
  theme(legend.key.size = unit(1,'cm'),
        legend.key.height = unit(1,'cm'),
        legend.key.width = unit(1,'cm'),
        legend.title=element_text(size=7),
        legend.text=element_text(size=6))+
  theme(legend.position = "bottom")
dev.off()
pdf("Meliaceae family Dbh1.pdf") 
ggplot(Meliaceae,aes(Time,Dbh1, colour=Cd))+
  geom_point()+
  facet_wrap(~Cd)+
  theme(legend.position = "bottom")
dev.off()
pdf("Meliaceae family Dbh2.pdf")
ggplot(Meliaceae,aes(Time,Dbh2, colour=Cd))+
  geom_point()+
  facet_wrap(~Cd)+
  theme(legend.position = "bottom")
dev.off()











 
head(Tree_DBH)
cor.test(Tree_DBH$DBH1, Tree_DBH$DBH2)
cor.test(Tree_DBH$DBH1, Tree_DBH$Time)
cor.test(Tree_DBH$DBH2, Tree_DBH$Time)
    #Pearsons product-moment correlation

#data:  Tree_DBH$DBH1 and Tree_DBH$DBH2
#t = 14.907, df = 97, p-value < 2.2e-16
#alternative hypothesis: true correlation is not equal to 0
#95 percent confidence interval: 0.7625232 0.8858460
#sample estimates:
#cor:0.8343408 


  #Pearson's product-moment correlation

#data:  Tree_DBH$DBH1 and Tree_DBH$Time
#t = -2.4797, df = 97, p-value = 0.01487
#alternative hypothesis: true correlation is not equal to 0
#95 percent confidence interval:-0.42126214 -0.04910997
#sample estimates:
#cor -0.2441547 

cor.test(Tree_DBH$DBH2, Tree_DBH$Time)

	#Pearson's product-moment correlation

#data:  Tree_DBH$DBH2 and Tree_DBH$Time
#t = -2.445, df = 97, p-value = 0.01629
#alternative hypothesis: true correlation is not equal to 0
#95 percent confidence interval: -0.41844878 -0.04570221
#sample estimates:
#cor:-0.2409402 




                                                                              