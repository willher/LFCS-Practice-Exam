#   a. find all processes running owned by user bob and write them to a file
#   b. find the parent process of foo process and append it to a file
#   c. find the processes running by bob and write their pid values to a file
#   
ps -u bob > file.txt 

ps -ef --forest | grep foo 

echo "output from grep" >> file.txt 

ps -u bob > intermediate.txt

vi intermediate.txt 

wq!

mv intermediate.txt file.txt 