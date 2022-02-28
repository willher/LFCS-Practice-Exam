# Create a 2G swap partition from the 5G disk avalibe.  Ensure it is mounted upon boot
#
lsblk 

fdisk 

t : choose linux swap

w 

partprobe 

mkswap /dev/sdc1

swapon /dev/sdc1

vi /etc/fstab 

/dev/sdc1 none swap defaults 0 0 

wq! 