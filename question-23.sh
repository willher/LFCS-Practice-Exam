# Being able to quickly search files is an important task for system administrators
#
#   Search the file /usr/sample/example.txt for the follwoing and write them to file.txt:
#       a. all lines that end with the word linux
#       b. all lines that start with the word Linux
#       c. all lines with Linux and yay both in them.
#       d. lines that contain linux or yay in them.
#
#--------------------------------------------------------------------------------------

grep 'Linux$' example.txt > file.txt

# '$' is the special character for end of line

grep '^Linux' example.txt >> file.txt

# '^' is the special character for start of line

grep 'Linux' example.txt | grep 'yay' >> file.txt

# you can pipe output from one grep into another to apply two filters

grep 'Linux\|yay' example.txt >> file.txt 

# '|' is the special character for or but must be escaped with a '\' so it's not interprated literally 