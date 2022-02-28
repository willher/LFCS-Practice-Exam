# Alter the init boot sequence so that the rc.local or boot.local script (depending on the distribution that you have selected) is executed at boot time. 

cat /etc/rc.local 

chmod +x /etc/rc.d/rc.local 