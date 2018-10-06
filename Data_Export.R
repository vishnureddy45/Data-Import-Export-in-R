
#################################################################################

# There are numerous methods for exporting R objects into other formats.
# For SPSS, SAS and Stata, you will need to load the foreign packages. 
# For Excel, you will need the xlsReadWrite package.

#################################################################################

####### Export data from R to an csv #####################

#write.xlsx works in the following manner: "write.xlsx(x, file, asTable = FALSE,...)".

write.xlsx(data, file="mydata.csv")

####### Export data from R to an Excel ###################

library(xlsx)

write.xlsx(data, file="myworkbook.xlsx")


##################### SPSS ###############################

write.foreign(df=myDf, datafile="d:/daniel/dataGoesHere.dat",
              codefile="d:/daniel/syntaxGoesHere.sps", package="SPSS")


##################### SAS ################################

# write out text datafile and an SAS program to read it

library(foreign)

write.foreign(mydata, "c:/mydata.txt", "c:/mydata.sas",   package="SAS")

##################### STATA ##############################

# Export data frame to Stata binary format 

library(foreign)

write.dta(mydata, "c:/mydata.dta")

##################################################################################
