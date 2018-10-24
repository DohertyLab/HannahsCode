rm(list=ls())
getwd()

setwd("/Users/hannahrogers/downloads")
getwd()

clock <- read.csv("clocktargets.csv")
dim(clock)
head(clock)

clock2<-data.frame(clock)
head(clock2)

anyDuplicated(clock, nmax=NA)

duplicated(clock)

unique(clock)

clock1 <-data.frame(clock=sample(1:5, replace=TRUE))
table(clock1)
as.data.frame((table(clock1)))

newdf <- ddply(df, clock, function(x) {
  transform(x, replicate=1:nrow(x))})

library(data.table)
setDT(clock2, key = c('CCA1'))
clock2[, Repeats := 0:(.N-1), by=CCA1]
clock2

library(data.table)
clock2[, replicate := 1:.N, by="TOC1"]
clock2

clock3 <- read.csv("CCA1TOC11.csv")
head(clock3)

clock4<-data.frame(clock3)

library(data.table)
setDT(clock4)
clock4[, Repeats := 0:(.N-1), by=Targets]
clock4

getwd()
write.table(clock4, "/Users/hannahrogers/Downloads/clock4.txt", sep="\t")

CCA1 <- read.csv("CCA1.csv")
TOC1 <- read.csv("TOC1.csv")
PRR5 <- read.csv("PRR5.csv")
PRR7 <- read.csv("PRR7.csv")
PRR9 <- read.csv("PRR9.csv")

library(data.table)
cca11<-data.frame(CCA1)
setDT(cca11)
cca11[, Repeats := 0:(.N-1), by=CCA1]
cca11
getwd()
write.table(cca11, "/Users/hannahrogers/Downloads/cca11.txt", sep="\t")

library(data.table)
toc11<-data.frame(TOC1)
setDT(toc11)
toc11[, Repeats := 0:(.N-1), by=TOC1]
toc11
getwd()
write.table(toc11, "/Users/hannahrogers/Downloads/toc11.txt", sep="\t")

library(data.table)
prr51<-data.frame(PRR5)
setDT(prr51)
prr51[, Repeats := 0:(.N-1), by=PRR5]
prr51
getwd()
write.table(prr51, "/Users/hannahrogers/Downloads/prr51.txt", sep="\t")

library(data.table)
prr71<-data.frame(PRR7)
setDT(prr71)
prr71[, Repeats := 0:(.N-1), by=PRR7]
prr71
getwd()
write.table(prr71, "/Users/hannahrogers/Downloads/prr71.txt", sep="\t")

library(data.table)
prr91<-data.frame(PRR9)
setDT(prr91)
prr91[, Repeats := 0:(.N-1), by=PRR9]
prr91
getwd()
write.table(prr91, "/Users/hannahrogers/Downloads/prr911.txt", sep="\t")

library(data.table)
cca111 <- fread("cca11.txt", select = c(3))
toc111 <- fread("toc11.txt", select = c(3))
prr5111 <- fread("prr511.txt", select = c(3))
prr711 <- fread("prr71.txt", select = c(3))
prr911 <- fread("prr91.txt", select = c(3))

Repeats<-c()

install.packages
