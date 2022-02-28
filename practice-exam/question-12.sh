# Managing groups and group permissions is an important task for system administrators:
# 
# Perform the following actions:
# 	a. Make the following groups:
# 		i. employees
# 		ii. contractors
# 	b. Make a new directory called /srv/admin
# 	c. Give the group administrators full access (read/write/execute) to /srv/admins
#     d. Give the group administrators the same rights/privileges as root and allow members of the group to run all commands without a password prompt.
#     e. Create a directory /data/list and then create a file ‘list-info’. Redirect the output of the ‘ls’ manual page into the contents of the file. 
#
#-------------------------------------------------------------------------------------------------------------------------------------------------------

groupadd employees

# adds a new group

groupadd contractors

# adds a new group

groupadd administrators

# adds a new group

mkdir /srv/admin

# makes the directory 

chown root:administrators /srv/admin

# makes group administrators owners of the directory

chmod 770 /srv/admin 

# gives read, write, and execute to user 'root' and group 'administrator'

mkdir /data/list 

# makes the directory

man -P cat ls >> list-info 

# redirects the output of the ls man page to a file

visudo 

# this file contains access to sudo commands 

%administrators ALL=(ALL) NOPASSWD: ALL

# this file can modify users or group permissions.  % shows it is a group.  ALL=(ALL) will always be that for the exam.  the last 'NOPASSWD: ALL' means the group will not be prompted for a password when running ALL commands