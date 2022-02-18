# System administrators will often have to diagnose and fix disks on Linux machines.
#
# The disk where /mnt/backup is mounted is not working. Repair the disk and verify it will be automatically mounted upon reboots***
#
# ***NOTE: This question is hard to simulate; however, you can run the corrisponding commands on a working disk and see the outputs
#
# ---------------------------------------------------------------------------------------------------------------------------------

df -h 

# this will list all mounted filesystems and which disk they are mounted to.  You could also use lsblk

umount /dev/sda 

# always umount a disk before repairing it

fsck /dev/sda 

# this will run a check on the disk

fsck -y /dev/sda 

# this will run a auto repair on the disk errors 

vi /etc/fstab 

# this is the file that you put partition or SWAP files to automatically be avalible on boot

/dev/sda /mnt ext4 defaults 0 0 

# <path>    <mount point>   <file system type>  defaults    0   0   

ZZ