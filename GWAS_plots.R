library(ggplot2)
library(gridExtra)
library(readxl)
library(ggpubr)

options(scipen = 999)

gwas<-read_excel("./GWAS_28205.xlsx")


pvi<-ggplot(data=gwas, aes(x=sex, y=ct))+ geom_boxplot(outlier.shape=NA)+geom_jitter(width= 0.1)+
  xlab("28205 day post infection")+ylab("Galbut virus ct")+theme_minimal()+theme(axis.title = element_text(size = 15))+theme(legend.position = "none")+
  ggtitle ("28205 offspring and parents by day post injection")

pvi
