# As a Linux System administrator you will often be tasked with maintaining webservers.  
# Sometimes you will want to change the default behavior of the http service to accomidate your needs.
#
# 1. Update the port that the httpd service listens on from 80 to 1990.  
# 2. Ensure these changes are persistent 
#
# --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

vi /etc/httpd/conf/httpd.conf

# /etc/<SERVICE>/conf/<SERVICE>.conf is a pretty standard format / location for config files

Listen 80 -> 1990

# update the value 80 with the value 1990

ZZ

systemctl restart httpd 

# you must restart the service in order for it to pick up the new config

yum whatprovides firewall-cmd

# this step may be unnessesary but it is going to update install the firewalld service and update the firewall to allow traffic on the new port

yum install firewalld

# this installs firewalld

systemctl enable firewalld

systemctl start firewalld

# this starts firewalld and makes it automatically start on reboot

firewall-cmd --add-port=1990/tcp --perminate

# this adds a firewall rule for our newly added port

firewall-cmd --reload 

# this reloads the firewall with the new rule