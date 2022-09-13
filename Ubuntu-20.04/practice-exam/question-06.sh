# Hard and soft links offer a wide variety of options for System administrators.  Perform the following tasks with system links:
#
# 1. Create a hard link to /usr/local/links/hardlinkme.txt named 'hardlink1'
# 2. Create a soft link to /usr/local/links/softlinkme.txt named 'softlink1'
# 3. Write the path that 'softlink2' in /usr/local/links resolves to
# 4. Verify which file in /usr/local/links/hardlinks/ had the most hardlinks to it and write the number of hard links to a file called 'linknum' in /usr/local/links/hardlinks/ 
#
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ln /usr/local/links/hardlinkme.txt hardlink1
ln -s /usr/local/links/softlinkme.txt softlink1

ls -ltr 
