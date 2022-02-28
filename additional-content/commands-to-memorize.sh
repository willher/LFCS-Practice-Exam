COMMANDS TO MEMORIZE FOR LFCS ATTEMPT 2 
----------------------------------------------------------------------------------------------------------------------------------------------------------------

lsattr file.txt** lists unique attributes

chattr -i file.txt** removes attribute 'i' which prevents deletion 

nmcli device show ** shows tons of information about networking info IPaddrs, DNS, Gateway, Default routes

nmtui **a graphical interface to edit network information 

iptables -L **shows all iptable rules 

iptables -A INPUT --protocol icmp --in-interface eth0 -j REJECT ** Appends a rule to the ip table to Reject incoming icmp messages sent to eth0 interface

yum install net-tools ** installs netstat package 

netstat -r **shows IP routing table in a nice format

route -n **shows IP tables in an older manner 

cat /etc/services ** contains default services and the ports they run on 

systemctl cat <SERVICE> **shows contents of service file and path to it <------------------- Query and modify the behavior of running systems

systemctl show <SERVICE> **shows all options avalible for a service 

systemctl edit --full <SERVICE> **Edits the systemd full file instead of making an ovveride 

systemctl daemon-reload **Reloads the service daemon after you add an override

systemctl list-dependencies <SERVICES> **Shows all the dependencies of a service 

systemctl list-units --type=service **shows all service units on a system 

mkdir -p /foo/bar/baz ** creates parents on the way 

vi /etc/login.defs  ** where password requirements is stored 

vi /etc/sysconfig/network-scripts/<device>.conf **apply networking statically by hand 

vi /etc/security/limits.conf **hard and soft limits for users and groups 

fsck /dev/sda **will run a check on the disk. dont forget to umount first 

fsck -y /dev/sda **will run an auto-repair on the disk

tune2fs -c 1  /dev/sdc1 

systemctl get-default 

systemctl set-default runlevel3.target 

lvcreate --type raid1 -n lv01 -L 1024M vg01

mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdb1 /dev/sdc1 

mdadm --manage /dev/md0 --add-spare /dev/sde1

/root/sample.swp none swap defaults 0 0 

find * -perm +200 -group test -type f -exec cp -a {} /path/to/dir/ \; ** Copies files with permissions kept that have owner write permissions and owned by group test

renice -n 4 -p <foo-pid>

ps -u bob --forest | grep foo  **finds all processes owned by bob and shows it in forest format 

sysctl -a | grep cdrom  ** shows all the parameters for a specific device 

sysctl -w dev.cdrom.autoclose=0 ** writes a change to the kernel parameter 

getfacl file.txt 

setfacl -m u:Bob:rw file.txt **modifices acl to add rw permissions to u(ser) 'Bob'.  Can also use -m g:<guid>:rwx to give a group acl permissions

setfacl -x u:Bob file.txt **this removes Bob from the ACL file 

find /foo/bar/ -type d -iname '*a*' -group webtest ** directory owned by group webtest with an 'a|A' in the name 

semanage fcontext -l | grep cron ** lists all SELinux contexts related to cron

kill -l *lists all the kill signals 