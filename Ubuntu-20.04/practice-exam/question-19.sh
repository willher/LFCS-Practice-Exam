# Manipulating services running on a system can be a very important task for system administrators
# 
#  There is a service named apache2 running on a system:
#   a. figure out which port apache2 is listening on
#   c. edit the config file for apache2 to listen on another port, 99
#   d. start apache2
#   e. send a SIGHUP signal to apache2
#   f. write the list of all files foo has open to /usr/service/foo.txt 
#
# ***NOTE this is difficult to simulate the way the LFCS asks it, but these steps can be performed on sshd to see the commands in action
#----------------------------------------------------------------------------------------------------------------------------------------

