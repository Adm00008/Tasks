 setwd("/Users/adammcmillion/Desktop/Evolution/Tasks/Project/Data")
read.csv("Annonaceae.csv")
Annonaceae<-read.csv("Annonaceae.csv")
read.csv("Burseraceae.csv")
Burseraceae<-read.csv("Burseraceae.csv")
  #24DE3D'

ggplot(Annonaceae,aes(Time, DBH1))+
  geom_point(size=3)+
  geom_line()+
  aes(colour=CD)+
  theme(legend.position = "bottom")
library(ape)  
library(Biostrings)
library(ggplot2)
library(ggtree)
