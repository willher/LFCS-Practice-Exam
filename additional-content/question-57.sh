#   a. change the run level parameter of the cdrom's autoclose parameter temperarily
#   b. disable ipv4 cooking syncing persistnetly 
#   
sysctl -a | grep cdrom 

sysctl -w dev.cdrom.autoclose=0

cd /etc/systemctl.d 

vi 10.network-sercurity-conf 

net.ipv4.ip_cooking=0

service procps start 