# Create a user account with username sysadmin with the following attributes: 
#     ●Use a password of science. 
#     ●This user’s home directory is defined as /sysadmin/. 
#     ●sysadmin has sudo privileges and will not be prompted for a password when using the last command. 
#     ●The default shell for this user is zsh. 

useradd -d /sysadmin/ -s /bin/zsh sysadmin 

passwd sysadmin 

>science

>science 

visudo 

sysadmin ALL=(ALL) NOPASSWD: ALL 