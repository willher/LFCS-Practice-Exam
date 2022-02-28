# Logical volumes can enhance the file system capabilities of a Linux VM.  Understanding and being able to manipulate them is critical to being a successful Linux administrator. 
#
# After attaching a 10gb disk for additional storage, perform the folling tasks***:
#
# 1. Create two partitions, each with 2GB of storage
# 2. Create a volume group name ‘vg01’ from the two partitions
# 3. Create a logical volume named ‘lv01’ with the following attributes
#  	 i. 2GB of storage from vg01
#  	 ii. Format it with the ext3 file system
#  	 iii. Give it a label ‘lv01’
#  	 iv. Mount it persistently to /mnt 
#
# ***NOTE: You will need to add an additional disk to your VM; however, the exam will specify which disk to use
#
#  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

lsblk 

# this shows you all the disks avalible

fdisk /dev/sdb

# this will start the creation process.  Nothing takes effect until you 'w' to write your changes

>n 

# this is the option to create a new partition.  you can press 'm' to see all options

>enter

# accepts default partition number value

>enter

# accepts default value for the first disk sector

+2G 

# this puts the last sector 2G away from your first sector, effectively setting the size too

L

# this lists all the partition types

t

# this changes your partition type

>3 

# you select your parition number from above.  you can use p to print the partition table

31; Linux LVM

# this is the number from the L output before that corrilates to the Linux LVM partition type

w

# this writes our changes 

fdisk /dev/sdc 

# ***NOTE: You will repeat with the above inputs to create our second partition 

partprobe 

# this will update the lsblk output

lsblk 

# verify our partitions were created and remind us of the names

pvcreate /dev/sdb1 

pvcreate /dev/sdb2 

# this turns our partition into physical volumes

vgcreate vg01 /dev/sdb1 /dev/sdb2 

# this combines our physical volumes into a volume group

yum install lvm2

# rememeber you can run yum whatprovides lvcreate if you forget lvm2.  Otherwise this will install the lvm package for us

lvcreate -L +2G -n lv01 vg01 

# this creates a logical volume 2G in size with the name lv01 from the volugme group vg01

mkfs.ext3 -L lv01 lv01 

# this adds the file system to our logical volume

mount /dev/sdb/vg01/lv01 /mnt 

# this mounts it to /mnt

vi /etc/fstab 

# this is where information about persistently mounted objects go

/dev/sda/vg01/lv01 /mnt ext3 defaults 0 0

# <PATH> <MOUNT POINT> <FILE TYPE> defaults 0 0 

ZZ

# writes changes and exits vim