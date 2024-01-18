

{
  data=read.csv("covid-deaths.csv")
  data
  
  str(data)
  library(ggplot2)
  ggplot(data,aes(State,Deaths))+
    geom_bar(stat="identity")+
    geom_text(aes(label=Deaths), position=position_dodge(width=0.2), vjust=-0.25)+
    
    theme(text = element_text(size=12),axis.text.x = element_text(angle=90, hjust=1)) 
  
}
