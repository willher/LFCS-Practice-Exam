#   a. Which file in this directory has the largest number of hard links to it?
#   b. Which files in this directory have write permissions enabled and are owned by group test?
#   c. Copy the files in b to a diretory maintaing their current ownership:permissions
#   d. Find all files created in the last two weeks and append them to output.txt
#   e. Find all files modified more than a month ago and append them to output.txt

ls -l 

find * -perm +222 -group test -type f 

find * -perm +222 -group test -type f -exec cp -a {} /path/to/dir/ \; 

find * -ctime -14 >> output.txt 

find * -mtime +30 >> output.txt