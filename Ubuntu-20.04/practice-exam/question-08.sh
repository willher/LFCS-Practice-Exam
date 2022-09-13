# Automating routine system tasks using bash scripts can help system administrators complete routine tasks
#
#  Write and run bash script to complete the following system exercises:
#	
#     a. Create 2 files in a new directory called ‘manuals’ located in your home directory 
#          i. Name the first file ‘sed-info’ and redirect the output of the ‘sed’ command man page to the contents of the file
#          ii. Name the second file ‘grep-info’ and redirect the output of the ‘grep’ command man page to the contents of the file. 
#     b. Archive and compress the contents of the newly created ‘manuals’ directory using the xz compression tool
#     c. decompress the file in the /usr/archive
#     c. Move the back up file to /usr/backups
#     d. Ensure to clean up any old backup files 
#
#--------------------------------------------------------------------------------------------------------------------------------
#!/bin/bash
rm -r /home/manuals
mkdir /home/manuals
cd /home/manuals

man sed > sed-info
man grep > grep-info
tar -cvf manuals.tar *
xz manuals.tar
mv manuals.tar.xz /usr/archive
cd /usr/archive
xz -d manuals.tar.xz
mv manuals.tar /usr/backups
