#  Managing packages
#      a. Write the package info about the last install package to a file
#      b. Find who owns the package /usr/bin/gzip
#      c. Update the package that runs the service 'foo'
#      d. find the package related to netstat and install it
#      e. Remove all python packages 
#      f. Update all packages that are avalible to be updated
#
rpm -qa | tail -1 

yum info <output> > file.txt

ls /usr/bin/gzip 

yum info foo

yum update foo

yum whatprovides netstat

yum install net-tools

yum remove python 

yum update 