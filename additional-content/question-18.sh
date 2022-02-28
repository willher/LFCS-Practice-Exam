# 18. Change the port where the ssh daemon listens to port 9999. Verify connectivity through the new port. 

vi /etc/ssh/sshd_config 

Port 9999

wq! 

semanage port -a -t ssh_port_t -p tcp 9999

firewall-cmd --add-port=9999/tcp --perminate 

firewall-cmd --reload 

systemctl cat ssh 

systemctl restart sshd 

ssh localhost -p 9999