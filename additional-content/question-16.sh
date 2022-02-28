# 16. Create a RAID 1 device named md0 using 2 disk devices of 1GB each and complete the following:
# 	a. Put a ext4 file system on it with the label of ‘md0’
# 	b. Add a spare disk of 1GB
# 	c. Mount to /raid
# 	d. Save the configuration

lsblk 

fdisk /dev/sdb

29; Linux raid

w

fdisk /dev/sdc 

29; Linux raid

w 

fdisk /dev/sde 

29; Linux raid

w

yum install mdadm 

mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdb1 /dev/sdc1 

mdadm --manage /dev/md0 --add-spare /dev/sde1

mkfs.ext4 -L md0 /dev/md0

mount /dev/md0 /raid 

vi /etc/fstab 

/dev/mdo /raid ext4 defaults 0 0 

wq!