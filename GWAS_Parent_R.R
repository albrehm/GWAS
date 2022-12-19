library(ggplot2)
library(gridExtra)
library(readxl)
install.packages("ggpubr")
library(ggpubr)

options(scipen = 999)

gwas<-read_excel("./GWAS_Parent_Analysis_12.15.22.xlsx")


pvi<-ggplot(data=gwas, aes(x=Sex, y=dd))+ geom_boxplot(outlier.shape=NA)+geom_point(position="jitter")+
  xlab("Sex")+ylab("Galbut virus compared to RpL32")+theme_classic()+theme(axis.title = element_text(size = 15))+
  ggtitle ("Parent Generation of GWAS Study Galbut Virus Compared to RpL")

pvi

