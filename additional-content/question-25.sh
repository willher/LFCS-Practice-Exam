# Create a new user account with the following attributes: 
#     ●Username is harry. 
#     ●Password is magic. 
#     ●This user’s home directory is defined as /home/school/harry/. 
#     ●This new user is a member of the existing students group. 
#     ●The /home/school/harry/binaries/ directory is part of the PATH variable. 

useradd -d /home/school/harry -G students harry

passwd harry 

>magic

>magic 

cd /home/school/harry 

ll -latr 

vi .bashrc 

G 

PATH=$PATH:$HOME/binaries/ 

source .bashrc 