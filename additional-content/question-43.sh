# install a package named qemu and perform the following:
#   1. verify the path where the package was installed
#   2. list the dependencies of the package and wite them to a file
#   3. assuming the package installed the qemu service: enable it
#   4. start the qemu service
#   5. locate qemu configuration file and edit it
#

yum install qemu 

yum info qemu 

yum deplist qemu 

systemctl cat qemu 

systemctl enable qemu 

systemctl cat qemu 

#this will tell you how to start the service

vi /etc/qemu/qemu.conf 

#this will be info in the cat command 