#   a. test the drive mounted at /data/test and pipe the results to file.txt
#   b. schedule the disk /dev/sde to be checked at reboot
#   c. schedule the system to reboot in 3 hours
#
df -h

umount /dev/sdc1 

#this is the drive that shows mounted at /data/test

fsck /dev/sdc1 > file.txt

tune2fs -c 1  /dev/sdc1 

shutdown -r 180