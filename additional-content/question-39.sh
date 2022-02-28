#using your local repo, install the packages needed for virtualization

cd /etc/yum.repos.d/ 

ls -ltr 

yum install --disablerepo="*" --enablerepo="local-repo" libvirt libvirt-bin qemu qemu-kvm wget virt-install virt-manager