# As a Linux System administrator you will often make changes to Virtual Machines running in your encironment
#
# 1. Start webserver 
# 2. Stop webserver2
# 3. Ensure that webserver automatically starts when the server restarts
#
# ***NOTE you will need to install libvirt libvirt-bin qemu qemu-kvm virt-install virt-manager wget and create the webservers first
# ----------------------------------------------------------------------------------------------------------------------------------

virsh start webserver

# starts 'webserver'

virsh stop webserver2

# stops webserver2

virsh autostart webserver

# updates the configuration of webserver to restart automatically