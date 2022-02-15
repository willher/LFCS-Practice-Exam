# Manipulating services running on a system can be a very important task for system administrators
# 
#  There is a service named foo running on a system:
#   a. figure out which port foo is listening on
#   c. edit the config file for 'foo' to listen on another port, 99
#   d. start foo
#   e. send a SIGHUP signal to foo
#   f. write the list of all files foo has open to /usr/service/foo.txt 
#
#---------------------------------------------------------------------------------------------------