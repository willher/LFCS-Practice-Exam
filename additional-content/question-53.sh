#   a. Verify your cron job 'foo.sh' completed
#   
vi /etc/crontab 

#see if the job foo writes to a special log file

grep cron /var/log/cron 

#should write to /var/log/cron but grepping all of the logs for cron may be more helpful