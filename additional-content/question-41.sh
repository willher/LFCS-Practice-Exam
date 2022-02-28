#create a 1GB SWAP file and add it to the exiting SWAP pool. Ensure it is mounted at boot. 

lsblk 

yum whatprovides fallocate 

yum install util-linux

fallocate -l 1G /root/sample.swp 

mkswap /root/sample.swp 

swapon /root/sample.swp 

vi /etc/fstab 

/root/sample.swp none swap defaults 0 0 

wq! 