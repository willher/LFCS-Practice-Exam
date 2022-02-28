# 3. Create a virtual machine with the following attributes:
# 	a. 1 vcpu
# 	b. 512 MB of memory
# 	c. Create and attach a 5GB disk for storage
# 	d. Download and use the minimal version of the current CentOS version as the OS image
#   e. Update the VM to restart on a system reboot.
#   f. Stop the VM

yum install libvirt libvirt-bin qemu qemu-kvm virt-install virt-manager wget  

systemctl enable libvirtd 

systemctl start libvirtd 

man page virt-instal ** contains URL for image

wget <URL>

virt-install --name=EXVM01 --vcpu=1 --ram=512 --disk size=5 --os-type=linux --os-varient=centos-stream9 --cdrom=/tmp/OS_IMAGE_iso 

virsh start ExVm01 

virsh autostart ExVm01 

virsh stop ExVm01 