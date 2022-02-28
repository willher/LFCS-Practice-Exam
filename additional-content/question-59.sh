#   flush the IP tables, ensure they are empty, then add a route on eth0 that DROPS incoming icmp packets 

iptables -L 

iptables --flush 

iptables -L 

iptables -A INPUT --protocol icmp --in-interface eth0 -j DROP 