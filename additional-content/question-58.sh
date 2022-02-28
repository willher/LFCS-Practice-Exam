#  Write the routing table to a file named route.txt

yum install net-tools 

netstat -r > route.txt 

OR

route -n > route.txt 