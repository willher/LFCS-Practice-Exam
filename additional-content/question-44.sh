#   Search the file example.txt for the follwoing and write them to a file:
#       a. all lines that end with the word linux
#       b. all lines that start with the word Linux
#       c. all lines with Linux and yay both in them.
#       d. lines that contain linux or yay in them.

grep 'Linux$' example.txt > file.txt

grep '^Linux' example.txt >> file.txt

grep 'Linux' example.txt | grep 'yay' >> file.txt

grep 'Linux\|yay' example.txt >> file.txt 