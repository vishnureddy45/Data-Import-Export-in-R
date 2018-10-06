
##############################################################################

#Save R data to file

###############################################################################

#Create a logfile for commands and output

sink("c:/vish/logfile.txt", split=TRUE)

#Save and read R objects in text format


dump("myDf", file="dumpMyDf.txt")

source("dumpMyDf.txt")

#Save data frame to a text file

myDf <- data.frame(IV=factor(rep(c("A", "B"), 5)), DV=rnorm(10))

write.table(myDf, file="data.txt", row.names=FALSE)

