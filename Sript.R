#18007740
#19022001

getwd()
setwd("C:/Users/sambo/OneDrive/Documents/R_2020")
df<-read.csv("Questionnaire.csv")
df<-read.csv("C:/Users/sambo/OneDrive/Documents/R_2020/Questionnaire.csv")
df
#5(a)
df[7,6]
#5(b)
df[10,]
#5(c)
df[,15]
#5(d)
df[c(15,1,20),3:6]
#5(e)
df[df$Mathdifi=="Agree",]
#5(f)
df[c(df$Gender=="Female" & df$Mathdifi=="Agree"),]
#5(g)
df[!df$Tribe=="Tsonga",]
#5(h)
df[c(df$Tribe=="Tsonga"|df$Tribe=="Venda"),]
#5(i)
df$heightcat<-cut(df$Height,c(0,150,300),c("short","tall"))
#5(j)
df[which(df$Height>150),]
#5(k)
df[order(df$Height,decreasing = TRUE),]
#5(l)
write.csv(df,"final.csv")
#5(m)
hist(df$Height)
#5(n)
plot(df$Tribe,xlab="Tribe",ylab="Freqeuncy",main="Tribe Frequencies")
#5(o)
fisher.test(df$color,df$Gender)
