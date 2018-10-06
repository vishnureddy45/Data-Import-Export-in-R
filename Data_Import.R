
########################################################################################

# Importing data into R is fairly simple
# For SPSS, SAS and Stata, you will need to load the foreign packages. 
# For Excel, you will need the xlsReadWrite package.

#######################################################################################

# Using the RCurl package, we can connect directly to data using its web address. 
# You will just use the url function in combination with any other read.* function listed earlier. 
#install.packages("RCurl")

library(RCurl)

input <- read.csv(url("https://www.mywebsite.com/data/mydata.csv"))

######## Importing csv file into R ######################

data <- read.csv(file_name,header=TRUE,stringsAsFactors=FALSE)

######## Importing multiple csv files into R ############

temp = list.files(pattern="*.csv")
myfiles = lapply(temp, read.delim)

####### Importing Excel files into R #####################

#install.packages("xlsx")

library(xlsx)

#read.xlsx preserves the data type.Note that, read.xlsx function is slow for large data sets 
#read.xlsx2 is faster on big files compared to read.xlsx function.

read.xlsx(file,  header=TRUE)

read.xlsx2(file, header=TRUE)

########## Importing multiple .xlsx files into R ##########

temp = list.files(pattern="*.xlsx")

myfiles = lapply(temp, read.delim)

############### Read data in text format ##################

# Read text data from a local file

# If reading from a file, check with getwd() that you are in the correct directory - or specify full file path.

# To read a raw text file, use readLines(). The result is a character vector with one element per line.

readLines(file="data.txt")

# If the result should be a data frame, use read.table().

read.table(file="data.txt", header=TRUE)
read.table(file="data.txt", header=FALSE)
read.table(file="data.txt", sep="\t")
read.table(file="data.txt", stringsAsFactors=FALSE)

##################### SPSS ################################

#To exchange data with SPSS, SAS and Stata (among others) is the foreign package

library(foreign)

#option use.value.labels converts value labels to R factors

read.spss(file="data.sav", use.value.labels=TRUE,to.data.frame=FALSE,trim.factor.names=FALSE)

####################### SAS ################################

# save SAS dataset in trasport format
# libname out xport 'c:/mydata.xpt';
# data out.mydata;
# set sasuser.mydata;
#run;

library(Hmisc)

mydata <- sasxport.get("c:/mydata.xpt") # character variables are converted to R factors


####################### Stata ###############################

# input Stata file

library(foreign)

mydata <- read.dta("c:/mydata.dta")

######################################################################################################