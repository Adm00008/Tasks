setwd("/Users/adammcmillion/Desktop/Evolution/Tasks/Project/Data")
read.csv("Treedataset.csv")
Tree_DBH<-read.csv("Treedataset.csv")
nrow(Tree_DBH)
tail(Tree_DBH)
pdf("DBH points.pdf")
plot(Tree_DBH$Time, Tree_DBH$DBH1, pch=16, col='black')
points(Tree_DBH$Time, Tree_DBH$DBH2, pch=16, col='blue')
legend("topright",
       legend = c("DBH1", "DBH2"),
       col=c('black','blue'),
       pch=16)
dev.off()
pdf("change in DBH1 and DBH2")
par(las=1, mar=c(3,4,1,1))
boxplot(Tree_DBH$DBH1, Tree_DBH$DBH2, boxwex=0.25, col=c("blue","black"), border="gray", names=c("DBH1", "DBH2"))
dev.off()
pdf("Histogram of change in DBHs.pdf")
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
  aes(colour=)+
  labs(title="Tree DBH1")+
  theme(legend.position = "bottom")+
  theme(legend.box.spacing = unit(.7,'mm'))+
  theme(legend.key.size = unit(.9,'cm'),
        legend.key.height = unit(.2,'mm'),
        legend.key.width = unit(1,'cm'),
        legend.title=element_text(size=2),
        legend.text=element_text(size=9))
  
  
dev.off()
pdf("Tree DBH2 Statistical analysis.pdf")
ggplot(Tree_DBH,aes(Time,DBH2))+
  geom_point(size=3)+
    aes(colour=Family)+
  labs(title="Tree DBH2")+
  theme(legend.position = "bottom")+
  theme(legend.box.spacing = unit(.7,'mm'))+
  theme(legend.key.size = unit(.9,'cm'),
        legend.key.height = unit(.2,'mm'),
        legend.key.width = unit(1,'cm'),
        legend.title=element_text(size=2),
        legend.text=element_text(size=9))+
  theme(legend.position = "bottom")
ggarrange(sp1,sp2,
          labels=c("A","B"),
          ncol=1,nrow=2)
  
dev.off()




#line graph:
library(ggplot2)
View(Tree_DBH)
pdf("DBH1 & DBH2")
ggplot()+
  geom_line(data=Tree_DBH,mapping = aes(x=Time, y=DBH1),color='#24DE3D',)+
  geom_point(data=Tree_DBH,mapping = aes(x=Time, y=DBH1),color='#24DE3D')+
  geom_point(alpha=1/10)+
  labs(x="Time",y="DBH1")+
  labs(title = "DBH1")
ggplot()+
  geom_line(data=Tree_DBH,mapping = aes(x=Time,DBH2),color='#F71275')+
  geom_point(data=Tree_DBH,mapping = aes(x=Time,DBH2),color='#F71275')+
  geom_point(alpha=1/10)+
  labs(x="Time",y="DBH2")+
  labs(title ="DBH2")+
    geom_point(alpha=1/10)
  ggarrange(db1,db2,
    labels=c("A","B"),
    ncol=1,nrow=2)
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






#theme_linedraw()+
#theme(legend.key.size = unit(1,'cm'),
#legend.key.height = unit(1,'cm'),
#legend.key.width = unit(.5,'cm'),
#legend.title=element_text(size=2),
#legend.text=element_text(size=2))+
#theme(legend.position = "bottom")
                                                                              