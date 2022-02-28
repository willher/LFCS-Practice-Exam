# Create a cron job that kills all processes named scan_filesystem which is owned by root, every minute. 

which pkill 

vi /etc/crontab 

0-59 * * * * root /usr/bin/pkill scan_filesystem 

#kill <pid> pkill <command> 