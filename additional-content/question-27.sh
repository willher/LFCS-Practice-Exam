# Ensure that all users can invoke the last command and access a list of users who previously logged in. 

which last 

chmod 777 /usr/bin/last 

man last 

chmod 777 /var/log/wtmp /var/log/btmp 

visudo 

ALL ALL=(ALL) NOPASSWD: /usr/bin/last 

wq! 

