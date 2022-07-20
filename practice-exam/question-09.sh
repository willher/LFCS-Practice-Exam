# System administrotrs need to often setup and maintain network connectivity between machines withing the business
#
# SSH to exam-1 and complete the following network changes to meet the requirements:
#
#    a. Configure your Linux machine with a static networking configuration
#    b. After you have set up static networking, add a secondary DNS server at the address of 8.8.8.8
#    c. Find a list of current nameservers for the system and redirect the output to a file called ‘dnsservice’ located in /srv/dns
#    d. Find the hostname and IP address of your machine and append the output to a file named  dns-service located in /srv/dns
#
# ***NOTE: if your virtual machine running in the cloud you may not be able to update these values; however you can review the file(s) and proccesses
#----------------------------------------------------------------------------------------------------------------------------------

ip a 

# this will list the network devices so you can see the name

nmcli device show 

# this does the same thing as above but provides MUCH more information

cd /etc/sysconfig/network-scripts/ 

# this is where all of the ocnfigurations for the ethernet devices

vi eth0.conf 

BOOTPROTO=none

# set bootproto to 'none' if you want to configure static networking

USERCTL=remove_this_line

# removing the USERCTL file is required for a manual configuation

IPADDR=ip -a

# use the ip address provided by the question OR the ip address from your ip -a command

PREFIX=24

# use the same /value from the nmcli device show command

GATEWAY=

# use the value from your nmcli device show command 

DNS1=8.8.4.4

# this value will be set already

DNS2=8.8.4.4

# this is how you configure a second DNS server

ZZ

# write our changes to the config file

systemctl restart NetworkManager.service

OR

ifdown eth0 && ifup eth0

# these are two ways to get the eth0 device to load it's new configuration.  The 2nd is less likly to disconnect you

nmcli device show

# this lists a ton of information about the networking configuration

echo "DNS from output" >> /srv/dns/dnsservice 

# echoing the value is much easier than other options

echo "IPADDR from output" >> /srv/dns/dns-service 

# echnoing the value is much easier than other options

hostname >> /srv/dns/dns-service 

# this sends the hostname to the file specified
