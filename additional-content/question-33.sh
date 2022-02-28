#upon booting, set machine to permanently boot into runlevel 3

who -r 

init 3 

OR

systemctl get-default 

systemctl set-default runlevel3.target 

OR

systemctl get-default

systemctl set-default multi-user.target 