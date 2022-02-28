# As a Linux System administrater you will often be tasked with recording and making changes to networking configuration of VMs.  
# For the below question you will need to ssh to exam-1 to complete the following***:
#
# 1. Write the contents of the routing table to a file in /usr/local/networking/routing.txt 
#
# ***NOTE: for the purpose of the practice exam perform this locally, but ensure you are familiar with how to ssh to a remove server.
# ***NOTE: there is no bash script for this questions.  You can perform this task on your base VM image
# -----------------------------------------------------------------------------------------------------------------------------------

ssh exam-1

# this will ssh you to the exam-1 server as your current user

yum whatprovides netstat

# you can do this with netstat or route, but i personally perfer netstat which isn't installed by default and I use for other network tasks

yum install net-tools

# this will install the netstat utility

netstat -r > /usr/local/networking/routing.txt 

# this will print the routing table and redirect it to the file specified by the question

cat /usr/local/networking/routing.txt 

# this will verify our content was written as expected 

exit

# this will exit your ssh connection and return you to your primary VM