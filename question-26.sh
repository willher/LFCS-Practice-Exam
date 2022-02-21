# a. Add Bob to the ACL for file.txt so he can read and write to it 
# b. Remove Sue from the ACL for the file
# c. Add group admin to the acl for the file with execute permissions
# d. Delete /home/delete.me
#
#----------------------------------------------------------------------

getfacl file.txt 

# this lists the current ACL information for file.txt

setfacl -m u:Bob:rw file.txt 

# this modifies the ACL for file.txt to add user Bob with rw permissions.  

setfacl -x u:Sue file.txt 

# this removes user Sue from the ACL for file.txt

setfacl -m g:admin:x file.txt

# this modifies the ACE for file.txt to add group admin to have execute permissons

rm -rf /home/delete.me 

# ***NOTE: You recieve an error that you do not have permissons to do this even ad ROOT!?

lsattr /home/delete.me 

# lists attributes on delete.me.  It has the 'i' attribute enables

chattr -i /home/delete.me 

# removes the 'i' attribute from delete.me

rm -rf /home/delete.me

# the command works now that the 'i' attribute is removed