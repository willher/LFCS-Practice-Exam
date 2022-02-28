find /foo/bar/ -type f -size 256k ** finds file of size 256k can use +/- to look for larger or smaller than

find /foo/bar/ -type f -name '*.tar' ! -user sarah  ** owner not equal to sarah 

find /foo/bar -type f -perm +200 ** find all files with user write permissions

find /foo/bar -type f -perm +060 ** find all files with group write or read or read/write 

find /foo/bar -type f -perm -060 **  find all files with group read/write but not just read or just write 

find /foo/bar -type f -perm -5000 ** find all files with stickbit AND setuid 

find /foo/bar -type f -perm -660 ** find all files user and group read AND write 

find /foo/bar/ -type d -iname '*a*' -group webtest ** directory owned by group webtest with an 'a|A' in the name 

-----------------------------------------------------------------------------------------------------------------

mkdir -p /foo/bar/baz ** creates parents on the way 

-----------------------------------------------------------------------------------------------------------------

lsattr ** lists unique attributes

chattr -i ** removes attribute 'i' which prevents deletion 

------------------------------------------------------------------------------------------------------------------

find /foo/bar -type f -exec cp -a {} /foo/bar/baz/ \; ** preserves user:group permissions and meta-data

-------------------------------------------------------------------------------------------------------------------

ls -l ** 2nd column tells you how many hard links something has 

-------------------------------------------------------------------------------------------------------------------

grep '^Sarah' ** find all lines that start with Sarah 

grep 'Sarah$' ** find all lines that end with Sarah

grep '^Sarah\b' ** finds all lines that starts with Sarah and a non letter or number \b = work bounderies 

--------------------------------------------------------------------------------------------------------------------

semanage fcontext -l | grep cron ** lists all SELinux contexts related to cron

ls -Z ** checks the context for files

ps -efZ ** Z shows the context for processes 

getenforce ** checks mode of SELinux

setenforce ** sets the mode for SELinux 

---------------------------------------------------------------------------------------------------------------------

nmcli device show ** shows tons of information about networking info IPaddrs, DNS, Gateway, Default routes

ifdown eth0 && ifup eth0 ** restarts a specific interface

systemctl restart NetworkManager.service ** restarts the network service

iptables -L ** lists iptable policies 

iptables --flush ** clears iptable 

iptables -A INPUT --protocol icmp --in-interface eth0 -j REJECT ** Appends a rule to the ip table to Reject incoming icmp messages sent to eth0 interface 

yum install net-tools ** installs netstat package 

netstat -a ** wide output of all networking services on all interfaces 

netstat -at ** all sockets for tcp -au for udp

netstat -tulpn **all tcp udp sockets with pid and formats it numerically

netstat -r **shows IP routing table in a nice format

route -n **shows IP routing table in a nice format too

ip r **shows IP route table but the format is less nice

ip route add 8.8.0.0/16 proto static  metric 10 via inet 192.168.1.12 dev eth0 **adds a extra hop to 192.168.1.12

traceroute **shows how a packet makes it to a desitnation 

----------------------------------------------------------------------------------------------------------------------

cat /etc/services ** contains services running on the server and the ports they run on 

cat /etc/group | grep -e foo -e bar **searche for a foo and bar group

----------------------------------------------------------------------------------------------------------------------

SIGNAL NAME                     VALUE                   EFFECt

SIGHUP                          1                       Hangup
SIGINT                          2                       Interrupt from keyboard
SIGKILL                         9                       Kill signal
SIGTERM                         15                      Termination signal
SIGSTOP                         17, 19, 23              Stop the process 


kill -s SIGNAL <pid> ** kills a process based on pid with a given signal type either Name|Value

kill -l ** lists all signals 

-------------------------------------------------------------------------------------------------------------------------

systemctl cat <SERVICE> **shows contents of service file and path to it <------------------- Query and modify the behavior of running systems

systemctl edit <SERVICE> **Adds an override file that overrides default behariovr 

rm -r /etc/systemd/system/<SERVICE>/override.conf **location of the override file 

systemctl edit --full <SERVICE> **Edits the systemd full file instead of making an ovveride 

systemctl daemon-reload **Reloads the service daemon after you add an override 

systemctl list-dependencies <SERVICES> **Shows all the dependencies of a service 

systemctl list-units --type=service **shows all service units on a system 

systemctl list-units --type=service --state=inactive **--state=active avalible too.  Shows all the inative|active services

systemctl list-units --type=socket **lists all sockets on a system

systemctl start <SERVICE>.socket **this will listen on a port and start the service when requests start coming in

-------------------------------------------------------------------------------------------------------------------------------

fuser /path/to/file <----tells you what process ID has a file open 

-------------------------------------------------------------------------------------------------------------------------------

docker image list **lists all downloaded container images 

virsh list --all **lists all running vms

virsh edit <VM> **edits a vm 

---------------------------------------------------------------------------------------------------------------------------------

./this_script.sh &> file.txt 
