# Hard and soft links offer a wide variety of options for System administrators.  Perform the following tasks with system links:
#
# 1. Create a hard link to /usr/local/links/hardlinkme.txt named 'hardlink1'
# 2. Create a soft link to /usr/local/links/softlinkme.txt named 'softlink1'
# 3. Write the path that 'softlink2' in /usr/local/links resolves to
# 4. Verify which file in /usr/local/links/hardlinks/ had the most hardlinks to it and write the number of hard links to a file called 'linknum' in /usr/local/links/hardlinks/ 
#
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ln /usr/local/links/hardlinkme.txt hardlink1

# ln creates a hard link to the file|dir with the given name

ln -s /usr/local/links/softlinkme.txt softlink1 

# same as hard link just with -s to specify soft

ls -ltr 

# this will show the soft links as full resolution path softlink2 -> /usr/local/links/softlinkme.txt

ls -ltr

# the output of this includes the number of hard links a file has to it in the first column NOTE: This applies to files not directories

echo "#" > /usr/local/links/hardlinks/linknum 

# it's much eaiser to use echo to write to the file than it is to pull it from the ls command and redirect it 