#   a. change the hostname to CENT6
#   b. change the DNS to resolve to 8.8.8.8
#   c. print the IP table and write it to a file called iptable.txt

vi /etc/hostname 

vi /etc/hosts

cd /etc/sysconfig/network-scripts/

vi eth0.config 

DNS1=8.8.8.8

ifdown eth0 && ifup eth0 

yum install net-tools

netstat -r >> iptable.txt 

OR

route -n >> iptable.txt