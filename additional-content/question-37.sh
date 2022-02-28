#Create a RAID 0 array using the (2) spare 5GB drives on the machine
#   a. size = 2048MB
#   b. label = RAID_0
#   c. mount it persistently by 'label' at /storage 

lsblk 

fdisk /dev/sda 

t

29 - Linux raid

fdisk /dev/sdb 

t 

29 - Linux raid 

yum install mdadm 

mdadm --create /dev/md0 --level=0 --raid-devices=2 /dev/sda1 /dev/sda2

mkfs.ext4 -L RAID_0 /dev/md0 

mount /dev/md0 /storage 

vi /etc/fstab 

/dev/md0 /storage ext4 defaults 0 0 