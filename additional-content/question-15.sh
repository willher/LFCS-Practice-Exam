# 15.  Find the rpm package which owns the library file /usr/lib/NetworkManager/conf.d/10-slaves-order.conf and append the output to /rpm/rpm-data

rpm -q --whatprovides /usr/lib/NetworkManager/conf.d/10-slaves-order.conf >> /rpm/rpm-data 