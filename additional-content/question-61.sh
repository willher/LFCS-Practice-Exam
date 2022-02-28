# a. Add Bob to the ACL for file.txt so he can read and write to it 
# b. Remove Sue from the ACL for the file
# c. Add group admin to the acl for the file with execute permissions

getfacl file.txt 

setfacl -m u:Bob:rw file.txt 

setfacl -x u:Sue file.txt 

setfacl -m g:admin:x file.txt