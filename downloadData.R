# download and unzip the raw files
# results in "UCI HAR Dataset" directory
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI HAR Dataset.zip",temp)
unzip(temp)
unlink(temp)
