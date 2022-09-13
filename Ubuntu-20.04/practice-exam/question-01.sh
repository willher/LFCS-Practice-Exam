# As the Linux system administration of ABC Company you have been getting complaints about the performance of some of the Linux servers used by your development team. 
# After investigating the source of these performance issue you realize the number of running processes started by users is too high.
#
# 1. Set a limit on the number of processes users of the 'developer' group can start to 20.  
# 2. Ensure that user 'Bob' who is a member of the 'developer' group is not impacted by these limits. 
#
# ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

vim /etc/security/limits.conf

@developer hard nproc 20
Bob hard nproc *

#login to user Bob and check his max user processes

ulimit -a
