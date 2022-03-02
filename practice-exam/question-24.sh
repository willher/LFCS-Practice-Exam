# Identifying the difference between files and directories is a common system administrator task
#
#   1. Find which files in /usr/diff/ is different and write the file name to a file /usr/diff/answer1 
#   2. Find all of the files that are in /usr/diff/diff1 but not in /usr/diff/diff2 and write them to /usr/diff/answer2
#
#---------------------------------------------------------------------------------------------------------------------------------------------------

diff file1 file2

# check for any output

diff file1 file3

# there is likly a way to do this with a quick bash script; however with <tab> autocomplete I find this to be easy enough

diff file1 file4

# repeat until you get an output

echo "file4" > /usr/diff/answer1 

# this quickly writes file4 to the answer file 

diff /usr/diff/diff1 /usr/diff/diff2 

# this will list all the files in either directory but not both

echo "file1" > /usr/diff/answer2

# writes the first different file to answer2 file

echo "file2" >> /usr/diff/answer2 

# appends the second different file to answer2 file