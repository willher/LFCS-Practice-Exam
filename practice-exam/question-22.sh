# Perform the following tasks to demonstrate your ability to search for files given various criteria: 
#
#     1.Find all executable files in the directory /srv/SAMPLE002 and remove them 
#     2.Find all files in the directory /srv/SAMPLE002, which have not been accessed during the last month and copy them to /srv/SAMPLE002/backup/ retaining their permissions
#     3.Find all empty directories in the directory /srv/SAMPLE002 and remove them 
#     4.Find all files in the directory /srv/SAMPLE002 with a file extension of .tar. 
#         a. Write a list of matching filenames, one per line, to the file /opt/SAMPLE002/toBeCompressed.txt, which has already been created. 
#         a. Ensure that you include the path to each file
#
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

find /srv/SAMPLE002 -executable -type f -delete 

# this finds all executable files and removes them

find /srv/SAMPLE002 -atime +30 -type f -delete 

# this finds files with access tiem over 30 days and deletes them.  ***NOTE: know mtime, atime, and ctime 

find /srv/SAMPLE002 -type d -empty -delete 

# this find all empty directories and removes them

find /srv/SAMPLE002 -name "*.tar" -type f > /pot/SAMPLE002/toBeCompressed.txt 

# this finds all files with extension .tar  ***NOTE: find uses full path in the output while ls just uses the file name