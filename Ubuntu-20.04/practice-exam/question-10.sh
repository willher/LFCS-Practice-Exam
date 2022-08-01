# System administrators will often have to diagnose and fix disks on Linux machines.
#
# The disk where /mnt/backup is mounted is not working. Repair the disk and verify it will be automatically mounted upon reboots***
#
# ***NOTE: This question is hard to simulate; however, you can run the corrisponding commands on a working disk and see the outputs
#
# ---------------------------------------------------------------------------------------------------------------------------------

fsck -a /dev/xvdc
mount /dev/xvdc /mnt/backup

vim /etc/fstab

/dev/xvdc /mnt/backup ext4 defaults 0 0