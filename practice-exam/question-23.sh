# Create a 1GB SWAP file and add it to the exiting SWAP pool. Ensure it is mounted at boot.***
#
#***NOTE: understand the difference between Swap file and swap partition and be able to complete the above with both
#
#--------------------------------------------------------------------------------------------------------------------

yum whatprovides fallocate 

# this is a handy tool to create files of a specific size

yum install util-linux

# this installs the fallocate package

fallocate -l 1G /root/sample.swp 

# this creates a file of size 1G at /root/sample.swp 

mkswap /root/sample.swp 

# this makes our new file a swap file

swapon /root/sample.swp 

# this turns on swap for this file

vi /etc/fstab 

# this file contains configuration for persistently configured drives

/root/sample.swp none swap defaults 0 0 

# <PATH> none swap defaults 0 0   ***NOTE: the none is because it has no mount point and it is type 'swap' 

ZZ

# writes changes and exits vim