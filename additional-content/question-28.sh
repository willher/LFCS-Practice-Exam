# Find the name of the service which uses TCP port 2605, as documented in /etc/services
#     1. Write the service name to the file /home/student/port-2605.txt. 
#     2. Find all of the ports used for TCP services IMAP3 and IMAPS, again as documented in /etc/services
#     3. Write those port numbers to the file /home/student/imap-ports.txt. 

vi /etc/services

/2605

echo "service-name" >> /home/student/port-2605.txt 

cat /etc/services | grep IMAP3

echo "port" >> /home/student/imap-port.txt

cat /etc/services | grep IMAP5

echo "port" >> /home/student/imap-ports.txt 