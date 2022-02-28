#Statically assign viable network settings to your machine
#   a. IP
#   b. DNS
#   c. FQDN
#   d. Gateway 

nmcli device show  

vi /etc/sysconfig/network-scripts/eth0.cfg 

BOOTPROTO=none 
USERMOD #delete
IPADDR=value ip a 
PREFIX=24 
GATEWAY=value ip ad
DNS1=8.8.8.8
DNS2=8.8.4.4 

wq! 

ifdown eth0 && ifup eth0

OR

systemctl restart NetworkManager.service 

vi /etc/host

G 

o 

IPADDR FDQN 

wq!
