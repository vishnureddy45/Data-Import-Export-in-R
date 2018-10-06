
#####################################################################################

# Access to Database Management Systems (DBMS)

#####################################################################################

# ODBC Interface

# The RODBC package provides access to databases (including Microsoft Access and Microsoft SQL Server) through an ODBC interface.

# The primary functions are given below.

# Open a connection to an ODBC database

odbcConnect(dsn, uid="", pwd="") 

#Read a table from an ODBC database into a data frame

sqlFetch(channel, sqtable)

#Submit a query to an ODBC database and return the results

sqlQuery(channel, query)

#Write or update (append=True) a data frame to a table in the ODBC database

sqlSave(channel, mydf, tablename = sqtable, append = FALSE)

#Remove a table from the ODBC database

sqlDrop(channel, sqtable)

#Close the connection

close(channel)

#import 2 tables (Forwards and Defenders) from a DBMS

#install.packages("RODBC")

library(RODBC)

myconn <-odbcConnect("mydsn", uid="admin", pwd="password1234")

crimedat <- sqlFetch(myconn, "Forwards")

pundat <- sqlQuery(myconn, "select * from Defenders")

close(myconn)

######################################################

# The RMySQL package provides an interface to MySQL.
 
# The ROracle package provides an interface for Oracle.
 
# The RJDBC package provides access to databases through a JDBC interface.


#######################################################################################