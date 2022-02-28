#   write all of the hops a packet takes when going to 8.8.4.4 to route.txt

yum whatprovides traceroute

yum install traceroute 

traceroute 8.8.4.4 > route.txt 