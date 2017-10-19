# Diana Hall
# load data

# construct data set
dir1<-"/Users/dh2744/Dropbox/Columbia/Software/github/ensembleEvents/Data/Sophie_Gnb1/Analysis/R_Objects"
file.dir1.div13<-c("/Users/dh2744/Dropbox/Columbia/Software/github/ensembleEvents/Data/Sophie_Gnb1/Analysis/outputPerDIV/Gnb1K78R_20161008_115832_DIV13_spikes.csv",
                   "/Users/dh2744/Dropbox/Columbia/Software/github/ensembleEvents/Data/Sophie_Gnb1/Analysis/outputPerDIV/Gnb1K78R_20161008_115832_DIV13_ns.csv",
                   "/Users/dh2744/Dropbox/Columbia/Software/github/ensembleEvents/Data/Sophie_Gnb1/Analysis/outputPerDIV/Gnb1K78R_20161008_115832_DIV13_bursts.csv")

# Robject
files.dir1<-list.files(dir1, full.names = T )
load(files.dir1[1])

WT.wells<-which( S$treatment =="WT" )

res1<-read.csv(file.dir1.div13[1], skip=3, header=T, nrows=48 ) #spikes
res1.wells<-res1[,1]
res1.quant<-res1[,-c(1,2)]

res2<-read.csv(file.dir1.div13[2], skip=5, header=T, nrows=48 ) #ns
res2<-res2[,c(1:12) ]
re2.quant<-
res3<-read.csv(file.dir1.div13[3], skip=5, header=T, nrows=48 ) #bursts
res3<-res3[,-dim(res3)[2]]

cbind.data.frame(res1,res2,res3)





