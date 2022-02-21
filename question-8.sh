# Automating routine system tasks using bash scripts can help system administrators complete routine tasks
#
#  Write and run bash script to complete the following system exercises:
#	
#      a. Create 2 files in a new directory called ‘manuals’ located in your home directory 
#          i. Name the first file ‘sed-info’ and redirect the output of the ‘sed’ command man page to the contents of the file
#          ii. Name the second file ‘grep-info’ and redirect the output of the ‘grep’ command man page to the contents of the file. 
#     b. Archive and compress the contents of the newly created ‘manuals’ directory using the xz compression tool
#     c. Unarchive the file in the /usr/archive
#     c. Move the back up file to /usr/backups
#     d. Ensure to clean up any old backup files 
#
#--------------------------------------------------------------------------------------------------------------------------------

vi /home/willis_hertweck/bash.sh 

#!/bin/bash

# this MUST be the first line of any bash script

cd /usr/backups

rm manArchive.tar

# this ensurces you do not have old files by removing them first

mkdir manuals 

cd manuals 

man -P cat sed >> sed-info

# this will print the 'sed' man page to cat and then redirect it to a file 

man -P cat grep >> grep-info 

# this will print the 'grep' man page to cat and then redirect it to a file 

tar -cvf manArchive.tar * 

# this creates a tar file of everything in the current directory 

xz -z manArchive.tar 

# this compresses the .tar file using xz compressions tool

cd /usr/archive 

mv /home/willis_hertweck/ManArchive.tar.xz . 

# this gets the archive file into the directory we want to unzip it.  I find this to be safer / easier

xz -d manArchive.tar.xz 

# this decompresses the xz compressed tar file

tar -xvf manArchive.tar 

# this unzips the tar file

mv manArhcive.tar /usr/backups

# this moves the backup file to the backup directory after decompressing it

ZZ

# this writes and quits the file we were in

./bash.sh 

# this runs the script from our current directory 

ls /usr/backups 

# verifies our backup file ended up where we wanted

ls -ltr /usr/archive

# verifies our files are now present 