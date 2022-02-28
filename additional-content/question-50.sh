#   a. find the differences between file1 and file2 and append them to a file
#   b. find which files in a directory is different and write it to a file
#   c. find all of the files in directory 1 that are not in directory 2 and write them to a file
#   
diff file1 file2 > differences.txt

diff dir1 dir2 > differences.txt 

diff dir1 dir2 

echo "output from diff" > differences.txt 