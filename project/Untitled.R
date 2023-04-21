setwd("/Users/adammcmillion/Desktop/Evolution/Tasks/Project")
require(ape)
library(phytools)
read.csv("Hepatitis B death rate.csv")
HepaBdeath20<-read.csv("Hepatitis B death rate.csv")
read.csv("Hepatitis C death rate 2020.csv")
HepaC20death<-read.csv("Hepatitis C death rate 2020.csv")
read.csv("Book7.csv")
book7<-read.csv("Book7.csv")
pdf("Phylogeny tree mutation in hepatitis B.pdf")
text.sring<-
  "(((((((rtL180M,rtM204),rtM204I),(rt181T,(rtA181V,rtN236T))),(rtI169T,rtI184A)), rtT184C),rtT184I),rtTI184G);"
vert.tree<-read.tree(text=text.sring)
plot(vert.tree,no.margin=TRUE,edge.width = 2);
  tiplabels(col = 'red')
dev.off()
vert.tree?


roundPhylogram(vert.tree)


plot(unroot(vert.tree),type="unrooted",no.margin=TRUE,lab4ut="axial",edge.width)
pdf("Hepatitis B Mutations in the S region.pdf")
text.string<-
  "(((((((((((((((((((((((T22C,T23C),A119G),(G131A,(T207A,G227A)),(G236A,T257C))),T287C),C313G),(C358T,C379A)),T400A),C407A),C428T),(C428T,G433A)),G434A),(T544G,G546A)),A585G),(T598A,G611A)),A617G),(A619C,G620A)),T623C),(G629A,T630G)),G629C),T638C),C649T),G662T);"
vert.tree<-read.tree(text=text.string)
plot(vert.tree,no.margin = TRUE,edge.width=2)
tiplabels(frame="circl", bg='blue',cex=.25)
dev.off()



roundPhylogram(vert.tree)


plot(unroot(vert.tree),type="unrooted",no.margin=TRUE,lab4ut="axial",edge.width)

Svl<-setnames(vert.tree$)
par(mar=c(0.1,0.1,0.1,0.1))
plot(vert.tree, type="fan",lwd=2, show.tip.label=F)
tiplabels(vert.tree$tip.label)
tiplabels(frame='circle',bg='red',cex=0.25)

ltt(vert.tree)
abline(0,1, lwd=2, col='pink',lty=2)


ggplot(HepaAonend,aes(Hospitalizations,Deaths))+
  geom_point(size=3)+
  aes(colour='blue')
  labs(title="hepaA end")+
  theme(legend.position = "bottom")+
  theme(legend.box.spacing = unit(.7,'mm'))+
  theme(legend.key.size = unit(.9,'cm'),
        legend.key.height = unit(.2,'mm'),
        legend.key.width = unit(1,'cm'),
        legend.title=element_text(size=2),
        legend.text=element_text(size=9))+
  theme(legend.position = "bottom")
  
  
  library(ggplot2)
  ggplot()+
    geom_point(HepaAonend,mapping=aes(x=Deaths,y=State), color='#24DE3D')+
    geom_line(HepaAonend, mapping=aes(x=Deaths,y=State), color='#24DE3D')
  Hepabratesbystate
  ggplot()+
    geom_line(Hepabratesbystate, mapping=aes(x=))
  
    
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
  Deaths<-HepaAonend$Deaths
  
  plot_usmap(regions="states")+
    labs(title="U.S. States",
         subtitle="This is a blank map of the United States")+
    theme(panel.background=element_blank())
read.csv("hepaCstatrate.csv")
hepatitisCstaterates<- read.csv("hepaCstatrate.csv")
rates<-hepatitisCstaterates$Rate
hepatitisCstaterates$fips<-statepop$fips
hepatitisCstaterates$abbr<-statepop$abbr
head(hepatitisCstaterates)
hepatitisCstaterates<-hepatitisCstaterates[order(hepatitisCstaterates$State),]
head(hepatitisCstaterates)
hepatitisCstaterates$fips<-statepop$fips
hepatitisCstaterates$State<-statepop$abbr
head(hepatitisCstaterates)
  #US MAP HEPATC
  hepaCstateandrate
library(ggplot2)
plot_usmap(data=hepatitisCstaterates$,
           values="Rate",
           labels=TRUE)
#practice 
library(tidyverse)
library(forcats)

theme_set(theme_bw()+
            theme(panel.grid=element_blank()))
Rate<-hepaCstaterate$Rate
library(ggplot2)
ggplot(hepaCstaterate,aes(Rate,Year))+
  geom_point(size=1,
             colour=State)
ggplot(hepaCstaterate)+
  geom_boxplot(x=Rate,y=Year)


## State name to abbreviation:
state.abb
  
state.name

state.abb[grep("New Jersey",state.name)]
state.abb[grep("hepaCstaterate$State", state.name)]
  
data()
view(msleep)
#msleep
msleep %>% 
  group_by(order) %>% 
  summarise(mean_sleep=mean(sleep_total)) %>% 
  mutate(order=fct_reorder(order,mean_sleep)) %>% 
  ggplot(aes(x=order,y=mean_sleep))+
  geom_point(size=3,
             colour="orange")+
  geom_segment(aes(x=order,
                   y=mean(msleep$sleep_total),
                   xend=order,
                   yend=mean_sleep),
               colour="grey")+
  geom_hline(yintercept=mean(msleep$sleep_total),
             colour="grey",
             size=1)+
  theme(axis.text.x=element_text(angle=90))+
  labs(title="Average sleep time of mammals by oder",
x="",
y="hours")
  





hepaCstaterate %>% 
  group_by(Rate) %>% 
  summarise(Rate=mean(Rate)) %>% 
  ggplot(aes(x=Rate,y=State))
  geom_point(size=3,
             colour="orange")+
  geom_segment(aes(x=order,
                   y=mean(msleep$sleep_total),
                   xend=order,
                   yend=mean_sleep),
               colour="grey")+
  geom_hline(yintercept=mean(msleep$sleep_total),
             colour="grey",
             size=1)+
  theme(axis.text.x=element_text(angle=90))+
  labs(title="Average sleep time of mammals by oder",
       x="",
       y="hours")
  State<-hepaCstaterate$State
pdf("Hepatitis C rate by state.pdf")
  ggplot()+
  geom_line(data=hepaCstaterate,mapping = aes(x=Rate,State),color="pink")+
    geom_point(data=hepaCstaterate,mapping = aes(x=Rate,State),color='blue')+
    geom_col() + theme (axis.text.x = element_text(margin = unit(c(0, 0, 0, 0), "mm"), angle = 90)) + coord_flip()
  dev.off()
  
 t.test(Rate~Year, data=hepaCstaterate)
library(ggplot)
 
ggplot(HepAratebyage, aes(x=Age,y=NULL))+
  geom_histogram()
HepAratebyage %>% 
  drop_na(Age) %>% 
  ggplot(aes(x=Age))+
  geom_bar(fill="orange")+
  theme_bw()+
  labs(x="Age",
       y=NULL,
       title="Rates by age group")
ggplot()+
  geom_line(data=HepAratebyage,mapping = aes(x=Age, y=NULL),color='#24DE3D',)+
  geom_point(data=HepAratebyage,mapping = aes(x=Age, y=NULL),color='#24DE3D')+
  geom_point(alpha=1/10)+
  labs(x="Age",y="NULL")+
  labs(title = "Age")

  labs(title ="DBH2")+
  geom_point(alpha=1/10)
ggarrange(db1,db2,
          labels=c("A","B"),
          ncol=1,nrow=2)
#below is not saved yet still got to figure out the legend
pdf("Hepatitis A rate by age.pdf")
ggplot()+
  geom_point(data=year06agerate,mapping=aes(x=Year,y=Age), color='orange')+
  geom_point(data=hepAagerate07, mapping=aes(x=Year,y=Age), color='blue')+
  geom_point(data=hepAagerate08, mapping=aes(x=Year,y=Age), color='red')+
  geom_point(data=hepAagerate09, mapping=aes(x=Year,y=Age), color='pink')+
  geom_point(data=hepAagerate10,mapping=aes(x=Year,y=Age),color='green')+
  geom_point(data=hepAagerate11,mapping=aes(x=Year,y=Age),color='black')+
  geom_point(data=hepAagerate12,mapping=aes(x=Year,y=Age), color='brown')+
geom_point(data=hepAagerate13, mapping=aes(x=Year,y=Age), color='#FFFF00')+
scale_color_manual(name='Year',breaks=c(2006,2007,2008,2009,2010,2011,2012,2013),
                   values=c('2006'='orange','2007'='blue','2008'='red','2009'='pink','2010'='green','2011'='black','2012'='brown','2013'='#FFFF00'))+
  theme(legend.title = element_text(size=20),
        legend.text=element_text(size=14))
 dev.off()
 
 library(usmap)
library(ggplot2) 
plot_usmap(regions = "states")+
  labs(title="Rates by state",
       theme(panel.background = element_rect(color = 'blue',fill='pink')))

plot_usmap(include=c("CA","ID","NV","OR","WA","WV"))+
  labs(title = "western Us states & West Virginia",
       subtitle="These are the states in the Pacific timezone")
plot_usmap(data=us_mapdata,values="Rate",color='blue')+
  scale_fill_continuous(
    low="white",high="red",name="Rates by state",label=Scales:comma)+
  theme(legend.position = "right")

df<-data.frame(
  state=c("ME","FL","LA","WV","IN","UT","KY"),
  values=c(3.2,2.9,0.2,4.4,4.8,4.0,2.9)
)


df19<-data.frame(
  state=c("ME","FL","LA","WV","IN","UT","KY","TN","MA","AK","NY","OH","WI","MT","IL","WA","NJ","GA","MI","PA","AL","MN","SD","MD","NC","OR","OK","IA","NE","NH","MO","NV","VA","KS","CT","VT","CO ","ID","CA","SC","Tx","NM"),
  values=c(3.2,2.9,2.9,4.4,4.8,4,2.9,3,2.3,1.9,1.6,2.4,1.9,1.6,1.2,1.1,1.1,0.6,1.2,1.6,1.8,1.1,3.2,0.5,1.4,0.5,0.6,0.3,0.2,1.5,0.7,0.5,0.8,0.7,0.2,1,0.8,1,0.5,0.2,0.2,0.5)
)
pdf("2019 Hepatitis C rates by state.pdf")
plot_usmap(data=df19)+
  labs(title="2019 Hepatitis C rates by state ")+
  scale_fill_continuous(low='white',high='red')
dev.off()
hepaC20rates$State
hepaC20rates$Rate
remove(df20)
df20<-data.frame(
  state=c("ME","FL","LA","WV","IN","UT","KY","TN","MA","AK","NY","OH","WI","MT","IL","WA","NJ","GA","MI","PA","AL","MN","SD","MD","NC","OR","OK","IA","NE","NH","MO","NV","VA","KS","CT","VT","CO","ID","CA","SC","Tx","NM"),  
 values=c(11.90,6.10,6.0,5.3,3.6,3.20,3.20,2.5,2.20,2.10,1.80,1.60,1.60,1.60,1.60,1.40,1.30,1.30,1.20,1.10,1.00,1.00,0.80,0.80,0.70,0.70,0.50,0.50,0.50,0.40,0.40,0.40,0.30,0.30,0.30,0.20,0.20,0.10,0.10,0.10,0.10,0.01)
)
df20<-data.frame(
  state=c("ME","FL","LA","WV","IN","UT","KY","TN","MA","AK","NY","OH","WI","MT","IL","WA","NJ","GA","MI","PA","AL","MN","SD","MD","NC","OR","OK","IA","NE","NH","MO","NV","VA","KS","CT","VT","CO","ID","CA","SC","Tx","NM"),
  values=c(11.90,6.10,6.0,5.3,3.6,3.20,3.20,2.5,2.20,2.10,1.80,1.60,1.60,1.60,1.60,1.40,1.30,1.30,1.20,1.10,1.00,1.00,0.80,0.80,0.70,0.70,0.50,0.50,0.50,0.40,0.40,0.40,0.30,0.30,0.30,0.20,0.20,0.10,0.10,0.10,0.10,0.01)
)
pdf("2020 Hepatitis C rates by state")
plot_usmap(data=df20)+
  labs(title="2020 Hepatitis C rates by state")+
  scale_fill_continuous(low='white',high='red')
dev.off()
  
hepaB20rates$Rate_2020
dfB20<-data.frame(
state=c("AL","AK","AZ","AK","CA","CO","DE","FL","GA","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NJ","NY","NC","ND","OH","OK","OR","PA","SC","SD","TN","Tx","UT","VT","VA","WA","WV","WI","WY"),
values=c(1.2,0.5,0.2,1.2,0.1,0.2,0.7,2.1,1.0,0.2,1.5,0.5,0.1,2.5,0.8,3.0,0.6,0.2,0.4,0.1,1.2,0.3,0.5,0.1,0.4,0.5,0.2,1.3,0.5,1.1,0.8,0.4,0.4,1.3,0.1,2.3,0.2,0.3,0.5,0.5,0.5,3.2,0.2,0.2)
)
pdf("2020 Hepatitis B rates by state")
plot_usmap(data=dfB20)+
  labs(title="2020 Hepatitis B rates by state")+
  scale_fill_continuous(low='white',high='red')
dev.off()
hepaB16rates$Year
dfB16<-data.frame(
 state=c("AL","AK","AZ","CA","CO","CT","DE","FL","GA","ID","IL","IN","IA","KS","LA","ME","MD","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY"),
 values=c(1.2,0.8,0.2,1.6,0.3,0.5,0.2,0.3,0.0,2.7,1.0,1.0,0.4,0.3,2.2,0.3,0.7,5.0,1.0,4.0,0.4,0.5,0.5,0.4,1.0,0.7,0.1,0.4,0.7,0.0,0.7,0.0,0.5,1.7,0.3,2.6,0.8,0.5,0.3,0.0,0.7,0.2,3.1,0.6,0.2,0.3 )
)
pdf("2016 Hepatitis B rates by state.pdf")
plot_usmap(data=dfB16)+
  labs(title="2016 Hepatitis B rates by state")+
scale_fill_continuous(low='white',high='red')
dev.off()
HepaBdeath20$death
df20HBDeath<-data.frame(
  state=c("AZ","CA","CO","FL","GA","IL","IN","KY","LA","MD","MA","MI","MN","MS","NJ","NY","NC","OH","OK","OR","PA","SC","TN","TX","VA","WA","WI"),
  values=c(0.24,0.75,0.50,0.41,0.28,0.24,0.37,0.83,0.56,0.57,0.30,0.25,0.65,0.61,0.26,0.50,0.30,0.39,0.74,0.82,0.19,0.38,0.73,0.44,0.34,0.53,0.27)
)
pdf("2020 Hepatitis B death rates.pdf")
plot_usmap(data=df20HBDeath)+
  labs(title="2020 Hepatitis B death rates")+
  scale_fill_continuous(low='white',high='blue')
dev.off()
HepaC20death$Death

df20Cdeath<-data.frame(
  state=c("AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MS","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY" ),
  values=c(2.67,5.17,3.36,3.43,4.54,5.84,1.97,1.94,3.22,2.38,2.63,3.88,1.68,2.56,2.36,3.54,6.17,5.60,2.14,3.77,2.26,2.26,3.03,4.05,2.44,5.54,2.53,2.81,2.05,2.10,6.91,2.14,2.65,2.34,3.11,10.28,7.41,2.39,3.50,3.27,2.85,5.66,4.15,2.28,4.54,2.62,4.32,5.64,2.49,6.31)
  )
pdf("2020 Hepatitis C death rates.pdf")
plot_usmap(data=df20Cdeath)+
  labs(title="2020 hepatitis C death rates")+
  scale_fill_continuous(low='white',high='blue')
dev.off()


HepaBdeath20$death
HepaC20death$Death
hepaBdeat<-c(0.24,0.75,0.50,0.41,0.28,0.24,0.37,0.83,0.56,0.57,0.30,0.25,0.65,0.61,0.26,0.50,0.30,0.39,0.74,0.82,0.19,0.38,0.73,0.44,0.34,0.53,0.27)
hepaCdeat<-c(2.67,5.17,3.36,3.43,4.54,5.84,1.97,1.94,3.22,2.38,2.63,3.88,1.68,2.56,2.36,3.54,6.17,5.60,2.14,3.72,2.26,2.26,3.03,4.05,2.44,5.54,2.53,2.81,2.05,2.10,6.91,2.14,2.65,2.34,3.11,10.28,7.41,2.39,3.50,3.27,2.82,5.66,4.15,2.28,4.54,2.62,4.32,5.64,2.49,6.31)
cor.test(hepaC20rates,hepaB20rates)
hepaB20rates$Rate_2020
hepaBrate<-c(1.2,0.5,0.2,1.2,0.1,0.2,0.7,2.1,1.0,0.2,1.5,0.5,0.1,2.5,0.8,3.0,0.6,0.2,0.4,0.1,1.2,0.3,0.5,0.1,0.4,0.5,0.2,1.3,0.5,1.1,0.8,0.4,0.4,1.3,0.1,2.3,0.2,0.3,0.5,0.5,3.2,0.2)
hepaC20rates$Rate
hepaCrate<-c(11.90,6.10,6.00,5.30,3.60,3.20,3.20,2.50,2.20,2.10,1.80,1.60,1.60,1.60,1.60,1.40,1.30,1.30,1.20,1.10,1.00,1.00,0.80,0.80,0.70,0.70,0.50,0.50,0.50,0.40,0.40,0.40,0.30,0.30,0.30,0.20,0.20,0.10,0.10,0.10,0.10,0.01)
cor.test(hepaBrate,hepaCrate)
#data:  hepaBrate and hepaCrate
t = 0.097746, df = 40, p-value = 0.9226
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
  -0.2898394  0.3178915
sample estimates:
  cor 
0.0154532 

plot(hepaBrate,hepaCrate,col=c("blue","orange"))+
  labs(title("Cor test"))
  
ggplot()
  sp2<-ggplot(hepaC20rates,aes(x=State,y=Rate))+
    coord_flip()+
    geom_point()+
    theme_grey()
    
  ggplot()
   sp1<- ggplot(hepaB20rates,aes(x=State,y=Rate_2020),color=State)+
      coord_flip()+
      geom_point()
    
      ggarrange(sp1,sp2,
                labels=c("A","B"),
                ncol=1,nrow=2)
plot(density(hepaCrate))
plot(density(hepaBrate))
pdf("cor test visial.pdf")
c1<-hepaB20rates %>% ggplot(aes(x=Rate_2020))+
geom_density(color="orange",fill="black",aplha="0.5")+
  labs(title = "2020 Hepatitis B cor test visual")

c2<-hepaC20rates %>% ggplot(aes(x=Rate))+
  geom_density(color='black',fill='orange',aplha='0.5')+
  labs(title="2020 Hepatitis C cor test visual")

ggarrange(c1,c2,
         labels=c("HB","HC"),
         ncol=1,nrow=2) 
dev.off()
