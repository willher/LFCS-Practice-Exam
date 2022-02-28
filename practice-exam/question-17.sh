# Find the rpm package which owns the library file /usr/lib/NetworkManager/conf.d/10-slaves-order.conf and append the output to /rpm/rpm-data
#
# Find the last 5 rpm packages installed and append them to /rpm/rpm-data
#
#---------------------------------------------------------------------------------------------------------------------------------------------

rpm -q --whatprovides /usr/lib/NetworkManager/conf.d/10-slaves-order.conf >> /rpm/rpm-data 

# this will find a package based on a config file and append it to a file

rpm -qa | tail -5 >> /rpm/rpm-data 

# this will find all packages installed and then grab the last 5 and append it to a file