# Manipulating services running on a system can be a very important task for system administrators
# 
#  There is a service named foo running on a system:
#   a. figure out which port foo is listening on
#   c. edit the config file for 'foo' to listen on another port, 99
#   d. start foo
#   e. send a SIGHUP signal to foo
#   f. write the list of all files foo has open to /usr/service/foo.txt 
#
# ***NOTE this is difficult to simulate the way the LFCS asks it, but these steps can be performed on sshd to see the commands in action
#----------------------------------------------------------------------------------------------------------------------------------------

yum whatprovides netstat 

# this lists the yum package that installs netstat which I very helpful

yum install web-tools 

# this installs the package from our yum whatprovides command

netstat -tulpn foo 

# this will show you which prot the service runs on 

systemctl cat foo 

vi /path/from/systemctl-cat/foo.conf 

systemctl cat foo

#This will also contain the way to start foo

ps -ef | grep foo 

kill -s SIGHUP <foo PID> 