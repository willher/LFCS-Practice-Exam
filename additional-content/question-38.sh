#Create a RAID 1 array using LVM using the two spare drives (5GB) on this machine:
#   a. size = 1024MB
#   b. label = RAID_1
#   c. mounted persistently by UUID to /stoarage2

yum install lvm2 

fdisk /dev/sda 

t 

31, LINUX LVM

fdisk /dev/sdb 

t 

31, LINUX LVM 

pvcreate /dev/sda 

pvcreate /dev/sdb 

vgcreate vg01 /dev/sda /dev/sdb 

lvcreate --type raid1 -n lv01 -L 1024M vg01

mkfs.ext4 -L RAID_1 /dev/vg01/lv01

mount /dev/vg01/lv01 /stoarage2 

vi /etc/fstab 

/dev/vg01/lv01 /stoarage2 ext4 defaults 0 0 

wq! 