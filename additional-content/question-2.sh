#2.  Install and configure a webserver:
	# a. Create the website lfctst.com
	# b. Ensure a client connecting to lfctst.com sees a message “Hello World”

ip a 

vi /etc/hosts

<IPADDR> lfctst.com 

yum install httpd

vi /var/ww/html/index.html

<HTML>
<BODY>
<P>Hello World</P>
</BODY>
</HTML>

wq!

systemctl enable httpd 

systemctl start httpd

systemctl status httpd 

firewall-cmd --add-protocol=http --perminate 

firewall-cmd --reload 