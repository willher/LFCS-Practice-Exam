# Setting up redundencies amoung disks is often an important taks that system administrators must complete. 
#
# Create a RAID 1 device named md0 using 2 disk devices of 1GB each and complete the following:
# 	a. Put a ext4 file system on it with the label of ‘md0’
# 	b. Add a spare disk of 1GB
# 	c. Mount to /raid
# 	d. Save the configuration and write the configuration file to /etc/mdadm/mdadm.conf
#   e. make it persistant
#***NOTE: You will have to add additional disks to do this on your VM.  The names may differ than what is shown from my lsblk command
#------------------------------------------------------------------------------------------------------------------------------------
