# Perform the following tasks to demonstrate your ability to work with archives and compressed files: 
#     1.Extract all files from archive file /opt/SAMPLE001.zip into target directory /opt/SAMPLE001 
#     2.Create a tar archive file /opt/SAMPLE0001.tar containing all files in the directory /opt/SAMPLE001 
#     3.Compress the tar archive file /opt/SAMPLE0001.tar using the bzip2 compression algorithm 
#     4.Compress the tar archive file /opt/SAMPLE0001.tar using the xz compression algorithm 
#         a. Make sure that the uncompressed archive file /opt/SAMPLE0001.tar is not removed after creating the compressed versions of the archive file! 

cd /opt/SAMPLE001 

unzip SAMPLE001.zip 

tar -cvf SAMPLE001.tar * 

bzip2 -z -k SAMPLE001.tar 

xz -z -k SAMPLE001.tar 