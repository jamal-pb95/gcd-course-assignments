# download data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, destfile = "E:/Projects/RProjects/gcd-course-assignments/week1/source-data/gcdw1.csv", method = "curl")

# store data in a variable
gcdqw1_data1 <- read.csv("E:/Projects/RProjects/gcd-course-assignments/week1/source-data/gcdw1.csv")

# show data head
head(gcdqw1_data1)

# How many properties are worth $1,000,000 or more?
sum(gcdqw1_data1$VAL == 24, na.rm = TRUE)