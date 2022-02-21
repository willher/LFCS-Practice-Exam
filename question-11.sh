# Setting up redundencies amoung disks is often an important taks that system administrators must complete. 
#
# Create a RAID 1 device named md0 using 2 disk devices of 1GB each and complete the following:
# 	a. Put a ext4 file system on it with the label of ‘md0’
# 	b. Add a spare disk of 1GB
# 	c. Mount to /raid
# 	d. Save the configuration and write the configuration file to /usr/raid-config
#
#***NOTE: You will have to add additional disks to do this on your VM.  The names may differ than what is shown from my lsblk command
#------------------------------------------------------------------------------------------------------------------------------------

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

+1G 

# this puts the last sector 1G away from your first sector, effectively setting the size too

L

# this lists all the partition types

t

# this changes your partition type

>3 

# you select your parition number from above.  you can use p to print the partition table

29; Linux raid

# this is the number from the L output before that corrilates to the Linux raid partition type

w

# this writes our changes 

fdisk /dev/sdc 

# ***NOTE: You will use the same inputs as above to create your second disk

fdisk /dev/sde 

# ***NOTE: You will use the same inputs as above to create your 'spare' disk

yum install mdadm 

# this installs the mdadm utility that is used to create raids

mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdb1 /dev/sdc1 

# this creates 'md0' as a raid 1 with 2 devices /dev/sdb1 and /dev/sdc1

mdadm --manage /dev/md0 --add-spare /dev/sde1

# this adds a spare drive /dev/sde to md0

mkfs.ext4 -L md0 /dev/md0

# this adds an ext4 file system with label md0 to 'md0'

mount /dev/md0 /raid 

# this mounts md0 to /raid

vi /etc/fstab 

# this is where persistent disks are listed to start upon boot

/dev/mdo /raid ext4 defaults 0 0 

# <PATH> <MOUNT POINT> <FILE SYSTEM> defaults 0 0 

ZZ

# this writes the file and closes vim

mdadm --detail --scan > /usr/raid-config

# this scans for details on our mdadm raids and writes them to the given /usr/raid-config file