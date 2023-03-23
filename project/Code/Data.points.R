setwd("/Users/adammcmillion/Desktop/Evolution/Tasks")
read.csv("data points.csv")
Tree_DBH<-read.csv("data points.csv")
plot(Tree_DBH)
dev.off()
plot(Tree_DBH$CD,Tree_DBH$DBH1)
plot(Tree_DBH$CD,Tree_DBH$DBH1, xlim=c(-0.15,0.15), xlab="Cd", ylab="DBH1")


#Hypothesis: How sunglight increases diamter size in Tree species.