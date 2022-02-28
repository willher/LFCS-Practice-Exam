# There is a service named foo running on a system:
#   a. figure out which port foo is listening on
#   b. find the rpm package that installed foo
#   c. edit the config file for 'foo' to listen on another port, 99
#   d. start foo
#   d. send a SIGHUP signal to foo
#
yum whatprovides netstat

yum -y install net-tools

netstat -tulpn 

yum whatprovides foo 

systemctl cat foo 

vi /path/from/systemctl-cat/foo.conf 

systemctl cat foo

#This will also contain the way to start foo

ps -ef | grep foo 

kill -s SIGHUP <foo PID> 