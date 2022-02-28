# Linux system administrators are often tasked with updating files
#
# Open the file under /home/student/textreferences/editme.txt and complete the following tasks: 
#     1.Move line 25 to line 1. 
#     2.Remove line 67. 
#     3.Replace every occurrence of the word burn shown with an lowercase b, with the word torch. 
#     4.Add a new line at the very end of the document that contains Fire Water Burn. 
#
#***NOTE: I'm sharing the exact keystrokes I use in vim to accomplish this.  Keep in mind with copy paste, vim, and your imagination there are many ways to do this
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------

vim /home/student/textreferences/editme.txt 

# opens the file in vim editor 

:set number 

# turns on line number

:25

# jumps to line 7777

dd

# 'cuts' the line

:1

# jumps to line 1

P 

# puts the buffered line from 'dd' above line 1

:67

# jumps to line 7000

dd

# cuts the line

:%s/burn/torch/g 

# finds and replaces all instances of Earth with Globe

G

#jumps to the end of the file

o 

# creates a line below currentl line

Fire Water Burn

# manually adds text from part 4

ZZ

# writes changes and exits vim