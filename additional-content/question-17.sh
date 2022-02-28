# 17. Verify which port the following services are listening on:
#     a. http daemon and enter the port number (and only the port number) in a file named ‘ports’ in /srv
#     b. SSH daemon and append the port number (and only the port number) to the file ‘ports’ in /srv

yum whatprovides netstat

yum install net-tools

netstat -tulpn | grep http 

netstat -tulpn | grep ssh 

vi /srv/ports 

wq! 

OR 

vi /etc/services 