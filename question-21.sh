# Performing backup, compression, and clean up are all important tasks for Linux System Administrators
#
#  Perform the following tasks to demonstrate your ability to work with archives and compressed files: 
#
#     1. create 3 blank files in your home directory and perform the following
#     2.Extract all files from archive file /opt/SAMPLE001.zip into target directory /opt/SAMPLE001 
#     3.Create a tar archive file /opt/SAMPLE0001.tar containing all files in the directory /opt/SAMPLE001 
#     4.Compress the tar archive file /opt/SAMPLE0001.tar using the bzip2 compression algorithm 
#     5.Compress the tar archive file /opt/SAMPLE0001.tar using the xz compression algorithm 
#         a. Make sure that the uncompressed archive file /opt/SAMPLE0001.tar is not removed after creating the compressed versions of the archive file! 
#
#----------------------------------------------------------------------------------------------------------------------------------------------------------

cd /home/willis_hertweck 

# this navigates to my home directory

touch file1

# creates a blank file

touch file2

# creates a 2nd blank file

touch file3

# creates a 3rd blank file

yum whatprovides zip

# lists the package that contains zip

yum install zip

# installs the zip command

zip SAMPLE001 *

# this zips up all the files in your current directory 

cd /opt/SAMPLE001 

# move to the dirctory where you will be extracting content

unzip SAMPLE001.zip 

# unzips SAMPLE001.zip into your current directory 

tar -cvf SAMPLE001.tar * 

# creates a tar archive file from all contents in our current directory

yum whatprovides bzip2

# lists the package needed for bzip2

yum instlal bzip2 

# installs the bzip2 compression utility

bzip2 -z -k SAMPLE001.tar 

# zips the tar file using the bzip2 compression algorithm and keeps the original file

xz -z -k SAMPLE001.tar 

# compresses the tar file using the xz compression algorithm keeping the original file