# As a Linux System administrator you will often make changes to Virtual Machines running in your environment. 
#
# 1. Start webserver 
# 2. Stop webserver2
# 3. Ensure that webserver automatically starts when the server restarts
#
# ***NOTE you will need to install libvirt libvirt-bin qemu qemu-kvm virt-install virt-manager wget and create the webservers first with but the exam seems to test your ability to modify running webservers
#               1. wget the image you want to use wget <URL TO OS IMAGE>
#               2. virt-install --name=webserver --vcpu=1 --ram=512 --disk size=5 --os-type=linux --os-varient=centos-stream9 --cdrom=/tmp/OS_IMAGE_iso 
#               3. virt-install --name=webserver2 --vcpu=1 --ram=512 --disk size=5 --os-type=linux --os-varient=centos-stream9 --cdrom=/tmp/OS_IMAGE_iso 
#
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------

virsh start webserver

# starts 'webserver'

virsh stop webserver2

# stops webserver2

virsh autostart webserver

# updates the configuration of webserver to restart automatically
