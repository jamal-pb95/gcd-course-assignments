# download source file
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl, destfile = "E:/Projects/RProjects/gcd-course-assignments/week1/source-data/gcdw1f2.xlsx", method = "curl")

# install "xlsx" package for reading excel file.
install.packages("xlsx")

# load a xlsx reading library
library(xlsx)

# Read rows 18-23 and columns 7-15 into R and assign the result to a variable called:
col <- 7:15
row <- 18:23
dat <- read.xlsx("E:/Projects/RProjects/gcd-course-assignments/week1/source-data/gcdw1f2.xlsx", sheetIndex = 1, colIndex = col, rowIndex = row)

# show head
head(dat)

# What is the value of:
sum(dat$Zip*dat$Ext,na.rm=T)