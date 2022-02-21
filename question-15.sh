# Find all of the the files in /home/example:
#
#   a. that are not owned by Sue and write them to a file /home/example/answer1 overriding anything that is currently there
#   b. that have the sgui enabled and append them to a file /home/example/answer2
#   c. that are 126MB in size and append them to a file /home/example/answer3
#   d. that are larger than 400kb and write them to a file /home/example/answer4 overriding anything that is currently there
#
#---------------------------------------------------------------------------------------------------------------------------

find /home/example/ ! -user Sue -type f

# i like to verify there is an output from my find or ls command then write it to a file

find /home/example/ ! -user Sue -type f > /home/example/answer1

# '!' negates some inputs like user so in this case all

find /home/example/ -perm -2000 -type f 

# this suid sguid and sticky bit are the 'invisible' number before your standard permissions.  

find /home/example/ -perm -2000 -type f >> /home/example/answer2

# be careful of append vs writing.  > overrides while >> appends

find /home/example/ -size 126M -type f

# read the man page on -size options.  You can use +|- to find bigger than or smaller than

find /home/example/ -size 126M -type f >> /home/example/answer3

# the suffixes for file size can be wonky.  Dont forget you can pipe manpages into grep. IE man find | grep size

find /home/example/ -size +400k -type f

# finds all files bigger than 400kb

find /home/example/ -size +400k -type f > /home/example/answer4 