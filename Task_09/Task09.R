library(diversitree)
transition_0to1<-0.1
transition_1to0<-0.1
speciation_0<-0.2
extinction_0<-0.1
speciation_1<-0.2
extinction_1<-0.1
maxN<-1e3
maxT<-50
Pars<-c(speciation_0,speciation_1,extinction_0,extinction_1,transition_0to1, transition_1to0)
simTree<-tree.bisse(Pars, max.taxa=maxN, max.t=maxT)
str(simTree)
stateTable<-table(simTree$tip.state)
stateTable/sum(stateTable)
set.seed(2)
phy<-tree.bd(c(1,0.3),max.taxa=100)
lik<-make.bd(phy)
argnames(lik)
phy2<-tree.bd(c(0,0.3),max.tax=100)
lik(c(1,0.03))
lik(c(1,.03), condition.surv = FALSE)
plot(phy,no.margin=TRUE,show.tip.label=FALSE)
fit<-find.mle(lik,c(.1,.03), method="subplex")
coef(fit)
logLik(fit)
fit$lnLik
purebirth<-constrain(lik,mu~0)
fit.purebirth<-find.mle(purebirth, coef(fit)[1], method="subplex")
anova(fit,purebirth=fit.purebirth)
set.seed(1)
samples<-mcmc(lik,fit$par,nsteps=10000,w=.1, print.every=0)
set.seed(1)
phy.sub<-drop.tip(phy,sample(100,25))
lik.sub<-make.bd(phy.sub,sampling.f=75/100)
fit.sub<-find.mle(lik.sub, c(0.1,0.03), method="subplex")
coef(fit.sub)
lik.sub.purebirth<-constrain(lik.sub,mu~0)
fit.sub.purebirth<-find.mle(lik.sub.purebirth,coef(fit.sub)[1],method="subplex")
anova(fit.sub,purebirth=fit.sub.purebirth)
samples$r<-samples$lambda-samples$mu
pdf("09_plot.pdf")
Col<-c("orange","black","red")
profiles.plot(samples[c("lambda","mu","r")], col.line=Col, las=1, xlab="Parameter estimate", ylab="Probability density", alpha=.75,legend.pos="topright")
abline(v=c(.1,.01,0.09), col=Col,lty=2)
dev.off()
#Thought this graph was interesting due to it showing the Extinction rate, and the speciation rate. I think its neat how it also shows the different parameters on the bottom of the graoh.
pars<-c(0.1,0.2,0.03,0.03,0.01,0.01)
set.seed(4)
phy<-tree.bisse(pars,max.t=30,x=0)
states<-phy$tip.state
head(states)
lik<-make.bisse(phy,states)
lik(pars)#-27.72
p<-starting.point.bisse(phy)
p
fit<-find.mle(lik,p)
fit$lnLik
round(coef(fit),3)
par(mar=rep(0,4))
col<-c("red", "blue")
plot(history.from.sim.discrete(phy,0:1),phy, col=Col)
tree<-rtree(n=5,rooted=TRUE,tip.label=NULL)
plot(tree)
tree<-rtree(n=30,rooted=TRUE, TRUE,tip.label=NULL)
plot(tree)
str(simTree)
library(phytools)
set.seed(3)
tree2<-pbtree(b=1,d=3, n=50)
plotTree(tree2)
library(diversitree)
set.seed(10)
phy<-tree.bisse(pars,max.t=30,x0=0)
plot(phy)
pars<-c(1,0.3,0.4,1,0.01,0.2)
set.seed(5)
phy2<-trees(pars, "bisse",max.taxa=70,max.t=Inf,x0=0)[[1]]
set.seed(3)
phy3<-tree.musse(Pars, 30,x0=1)
plot(phy3)
