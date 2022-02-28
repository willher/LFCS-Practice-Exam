#12. Find all off the the files in /home/example and write them to a file in the same directory
#   a. that are not owned by Sue and write them to a file
#   b. that have the sgui enabled
#   c. that are 126MB in size
#   d. that are larger than 400kb
 
 find /home/example/ ! -user Sue -type file > file.txt

 find /home/example/ -perm +2000 -type file > file.txt

 find /home/example/ -size 126M -type file > file.txt

 find /home/example/ -size +400k -type file > file.txt