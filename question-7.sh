# Logical volumes can enhance the file system capabilities of a Linux VM.  Understanding and being able to manipulate them is critical to being a successful Linux administrator. 
#
# After attaching a 10gb disk for additional storage, perform the folling tasks***:
#
# 1. Create two partitions, each with 2GB of storage
# 2. Create a volume group name ‘vg01’ from the two partitions
# 3. Create a logical volume named ‘lv01’ with the following attributes
#  	i. 2GB of storage from vg01
#  	ii. Format it with the ext3 file system
#  	iii. Give it a label ‘lv01’
#  	iv. Mount it persistently to /mnt 
#
#  ***NOTE: You will need to add an additional disk to your VM; however, the exam will specify which disk to use
#
#  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------   
