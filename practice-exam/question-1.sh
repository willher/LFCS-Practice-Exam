# As the Linux system administration of ABC Company you have been getting complaints about the performance of some of the Linux servers used by your development team. 
# After investigating the source of these performance issue you realize the number of running processes started by users is too high.
#
# 1. Set a limit on the number of processes users of the 'developer' group can start to 20.  
# 2. Ensure that user 'Bob' who is a member of the 'developer' group is not impacted by these limits. 
#
# ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

vi /etc/security/limits.conf 

# this file contains all of the limits set for users and groups

@developer  hard    nproc   20

# the '@' symbol means it is a group.  nproc is number of processes.  A full list of options is in this file

Bob     hard    nproc   *

# limits on users take precendence over limits on groups so Bob having a hard limit of * (default value) will override the limit set by developer group

ZZ

# writes changes and exits vim