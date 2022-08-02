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
systemd-resolve --status | grep "DNS Servers" -A2 # list of server
hostname -i | awk '{print $1}'