# download source file
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
download.file(fileUrl, destfile = "E:/Projects/RProjects/gcd-course-assignments/week1/source-data/gcdw1f3.xml", method = "curl")

# install "XML" package
install.packages("XML")

# load "XML" package
library("XML")

# store data in a variable
gcdqw1_data3 <- xmlTreeParse(sub("s", "", fileUrl), useInternal=TRUE)

rootNode <- xmlRoot(gcdqw1_data3)

# find how many resturants have zipcode = 21231
zip <- xpathSApply(rootNode, "//zipcode", xmlValue)
sum(zip == 21231)