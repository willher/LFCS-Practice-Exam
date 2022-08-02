# As a Linux System administrater you will often be tasked with recording and making changes to networking configuration of VMs.  
# For the below question you will need to ssh to exam-1 to complete the following***:
#
# 1. Write the contents of the routing table to a file in /usr/local/networking/routing.txt 
#
# ***NOTE: for the purpose of the practice exam perform this locally, but ensure you are familiar with how to ssh to a remove server.
# -----------------------------------------------------------------------------------------------------------------------------------

route -n > /usr/local/networking/routing.txt

cat /usr/local/networking/routing.txt