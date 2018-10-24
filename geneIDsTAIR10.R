rm(list=ls())
getwd()

setwd("/Users/hannahrogers/downloads")
getwd()

geneIDs <- read.table("TAIR10_all_gene_models")
head(geneIDs)

colnames(geneIDs)<-"geneIDs"
head(geneIDs)

geneIDs$geneIDs <- substr(as.character(geneIDs$geneIDs),
                                      start= 1, 
                                      stop= nchar(as.character(geneIDs$geneIDs) )-2 )

duplicated(geneIDs)
geneIDs2<-geneIDs[!duplicated(geneIDs),]

IDs<-data.frame(geneIDs2)



#Toc1
TOC1 <-read.csv("TOC1.csv")

IDsandTOC1<-IDs[,1]%in%TOC1[,1]

NumTOC1<-as.numeric(IDsandTOC1)

#CCA1
CCA1 <-read.csv("CCA1.csv")

IDsandCCA1<-IDs[,1]%in%CCA1[,1]

NumCCA1<-as.numeric(IDsandCCA1)

#PRR5
PRR5 <-read.csv("PRR5.csv")

IDsandPRR5<-IDs[,1]%in%PRR5[,1]

NumPRR5<-as.numeric(IDsandPRR5)

#PRR7
PRR7 <-read.csv("PRR7.csv")

IDsandPRR7<-IDs[,1]%in%PRR7[,1]

NumPRR7<-as.numeric(IDsandPRR7)

#PRR9
PRR9 <-read.csv("PRR9.csv")

IDsandPRR9<-IDs[,1]%in%PRR9[,1]

NumPRR9<-as.numeric(IDsandPRR9)

#Matrix
dataframeALL<-data.frame(NumCCA1,NumTOC1,NumPRR5,NumPRR7,NumPRR9)
matrixALL<-as.matrix(dataframeALL)
rownames(matrixALL)<-geneIDs2
head(matrixALL)
dim(matrixALL)

library(VennDiagram)

length(grep("1",matrixALL[,1]))
length(grep("1",matrixALL[,2]))
length(grep("1",matrixALL[,3]))
length(grep("1",matrixALL[,4]))
length(grep("1",matrixALL[,5]))

which(matrixALL[,1] %in% matrixALL[,2])

