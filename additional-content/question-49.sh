#   a. delete a file that says it cannot be delted and ownership cannot be changed by root
#   b. find all files that contain the word 'World' and write them to a file
#   c. find all the files that end in .tar and have the stickybit enabled and write them to a file
#
lsattr file 

chattr -i file 

rm -f file 

grep -r 'World' 

find /path/to/dir/ -type f -perm +1000 -name '*.tar' > file.txt 