# Configure the system so that the existing filesystem that corresponds to /staging gets persistently mounted in read-only mode.

lsblk -af 

df -h 

vi /etc/fstab 

/dev/sdb1 /staging ext3 defaults,ro 0 1 