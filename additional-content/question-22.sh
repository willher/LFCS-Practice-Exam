# the disk /dev/sda is not working. Fix the disc and ensure it automicatically gets mounted at book
#
umount /dev/sda 

fsck /dev/sda **will run a check on the disk

fsck -y /dev/sda **will run a auto repair on the disk errors 

vi /etc/fstab 

/dev/sda /mnt ext4 defaults 0 0 

wq! 