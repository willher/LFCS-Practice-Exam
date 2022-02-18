#  User 'Bob' recieved several error messages while trying to run commands as root this morning
#
#   1. Search the log viles in /var/log and write any errors pertaining to this to /usr/log/root.error
#
#------------------------------------------------------------------------------------------------------

cd /var/log

# this is where logs are stored by default 

grep Bob secure

# this will find the error messages in this case but you could grep other logs if needed

grep Bob secure > /usr/log/root.error 

# this will write the lines with Bob in the and write them to a file, you may need to grep Bob secure | grep error secure if there are lines without error, but this is unlikely 