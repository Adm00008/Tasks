5
A<-5
A*2
B<-c(A,5,5)
B
head(B)
head(A)
B*2
'B'*2
B<-c(A,5,5)
B*2
C<-c(B,6,10)
C*6
D<-c(1,5,10,15,20)
sum(D)
mean(D)
min(D)
E<-c(6,7,8,9,10)
which(E==8)
which(E>8)
E[which(E>8)]
trueMean1<- 5
trueSD1<-5
population1 <- rnorm(1e6, trueMean1, trueSD1)
trueMean2<- 4
trueSD2<-5
population2<-rnorm(1e6, trueMean2, trueSD2)
size<-50
Sample1<-sample(population1, size)
Sample2<-sample(population2, size)
boxplot(Sample1, Sample2)
#yes theyre different, not by a lot but they are.
individual1<-c("B", "A")
individual2<-c("A","A")
Gam1<-sample(individual1, 1)
Gam2<-sample(individual2, 1)
newBaby<-c(Gam1, Gam2)
#new baby is "B" and "A"
isHet<-c()
for(i in 1:1000) {
Gam1<-sample(individual1, 1)
Gam2<-sample(individual2, 1)  
newBaby<-c(Gam1, Gam2)
isHet[i]<-Gam1==Gam2
}
sum(isHet)/length(isHet)
source("https://jonsmitchell.com/code/simFxn04.R")
MatGrandma<-makeFounder("grandma_mom")
MatGrandpa<-makeFounder("grandpa_mom")
PatGrandma<-makeFounder("grandma_da")
PatGrandpa<-makeFounder("grandpa_da")
Alan<-makeBaby(PatGrandma, PatGrandpa)
Brenda<-makeBaby(MatGrandma, MatGrandpa)
Focus <- makeBaby(Brenda, Alan)
ToMom<-length( grep("mom", Focus))/length(Focus)
ToMomMom<-length( grep("grandma_mom", Focus))/length(Focus)
ToMomDad<- length( grep("grandpa_mom", Focus))/length(Focus)
Sibling_01<-makeBaby(Brenda, Alan)
ToSib<-length(intersect(Focus, Sibling_01))/length(Focus)
ManySiblings<-replicate(1e3, length(intersect( Focus, makeBaby(Brenda, Alan)))/length(Focus))
quantile(ManySiblings)
mean(ManySiblings)
head(ManySiblings)
boxplot(ManySiblings)
hist(ManySiblings)
pdf("003_relatePlot.pdf", height=4, width=4)
dev.off()
#The reason for the range of values is due to the sets of chromosomes from both parents which results for the different arrangments of data everytime.This will give us range of values.

