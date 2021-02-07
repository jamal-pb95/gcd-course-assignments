fileUrl4 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileUrl4, destfile = "E:/Projects/RProjects/gcd-course-assignments/week1/source-data/gcdw1f4.csv", method = "curl")

library(data.table)
DT <- fread("E:/Projects/RProjects/gcd-course-assignments/week1/source-data/gcdw1f4.csv")
DT

# option: a
system.time(rowMeans(DT[DT$SEX==1]), rowMeans(DT[DT$SEX==2]))
# result: Error in rowMeans(DT[DT$SEX == 2]) : 'x' must be numeric

# option: b
system.time(mean(DT[DT$SEX==1,]$pwgtp15), mean(DT[DT$SEX==2,]$pwgtp15))

system.time(DT[,mean(pwgtp15),by=SEX])

system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))

system.time(tapply(DT$pwgtp15,DT$SEX,mean))

system.time(mean(DT$pwgtp15,by=DT$SEX))