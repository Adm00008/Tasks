x<-rnorm(100,mean=0,sd=4)
var(x)
mean(x)
y=((x*5)+2)+runif(100,0,0.1)
pdf("plot1.pdf")
plot(x,y)
abline(lm(y~x),col='orange')
dev.off()
coef(lm(y~x))
z<-c()
x<-rnorm(100,mean=5,sd=4)
for(i in 1:100){
  z[i]<-runif(1)
  y<-(x*z[i])+2+(rnorm(100,0:0.1))
      l<-coef(lm(z[1:100]~y))
}
plot(z[1:100],y)              
abline(lm(y~z[1:100]))
coef(lm(y~z))
pdf('plot10.pdf')
plot(c(z,-1.2996))
dev.off()
library(ggplot2)
distance<-10000
door<-c('money','vacation','suprise')
Monty_hall<-function(iteration){
  game<-sample(door,replace=TRUE)
  i=2:iteration  
  win_total<-ifelse(door=='money',1,0)
  lose_total<-ifelse(door=='money',0,1)
  win_prob<-cumsum(win_total)/i
  lose_prob<-cumsum(lose_total)/i
  results<-data.frame(i=i,door=door,win_total=win_total,lose_total=lose_total,win_prob=win_prob,lose_prob=lose_prob)
return(results)                  
}
results<-Monty_hall(times)
summary<-table(results$race)
df_summary<-data.frame(label=names(summary), count=matrix(summary))
print(df_summary)
pdf("boxplotpdf")
barplot(c(sum(as.numeric(results$win_total)),sum(as.numeric(results$lose_total))), beside=TRUE,xlab="win",ylab="lose")
dev.off()
install.packages(meme.)
install.packages(memer)
library(memery)
install.packages(showtext)
meme_gif()
meme_list
library(memery)
pic1<-system.file("success.jpg",package='meme')
meme::meme(pic1,"coding","is fun!")
# Tried to put a Dodo bird for extinction couldn't get it to work
meme_gif
library(grid)
library(meme)
devtools::install_github("sctyner/memer")
