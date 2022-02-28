#   A service named foo is running perform the following:
#       a. determine the port foo is running on
#       b. list the package that installed foo
#       c. write the date which foo was installed to a file named file.txt 
#
yum whatprovides netstat

yum install net-tools

netstat -tulpn  | grep foo 

yum whatprovides foo 

systemctl cat foo 

yum info foo 

echo "date_from_info" > file.txt 