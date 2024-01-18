#!/usr/bin/Rscript
{
  data<-read.csv("covid-cases.csv") #choose the file
data
summary(data)
str(data)
#install.packages('ggplot2')
library(ggplot2)
options(scipen = 999)
ggplot(data,aes(State,Confirmed)) +
  geom_bar(stat = "identity")+
  ylim(0,500000)+
  
  geom_text(aes(label=Confirmed), position=position_dodge(width=0.2), vjust=-0.25)+
  
  theme(text = element_text(size=12),axis.text.x = element_text(angle=90, hjust=1)) 
}
