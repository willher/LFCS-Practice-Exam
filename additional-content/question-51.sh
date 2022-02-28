#   a. Find all running processes on a system and append them to file.txt
#   b. Find all processes with niceness level 3 running and append them to a file
#   c. Find the process that spanwed 'foo' and write it to a file.
#   d. write when the process 'bar' was started. 
#   e. change  the process 'foo' to have  a niceness value of 4 and then change it to niceness of -4

ps -ef >> file.txt 

htop 

#filter by niceness level

ps -ef --forest | grep foo 

echo "parent" > file.txt 

ps -aux | grep bar

echo "output_time" > file.txt 

ps -ef | grep foo

renice -n 4 -p <foo-pid>

renice -n -4 -p <foo-pid>

#this can also be done interactively through htop 