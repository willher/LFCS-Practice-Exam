#Download the following text file from Project Gutenberg:
#   a. http://www.gutenberg.org/cache/epub/844/pg844.txt
#   b. Within that document, find and replace every instance of the word "Ernest" with "Earnest"
#   c. Find line 3123 and put it at the bottom of the document.
#   d. Find line 2134 and put it at the top of the document.
#   e. Find line 2351 and put it at line 1532.

yum install wget 

wget http://www.gutenberg.org/cache/epub/844/pg844.txt

vi pg844.txt 

:%s/Ernest/Earnest/g 

:3123 

dd 

G 

o 

shift + ins 

:2134

dd

:1

O 

shift + ins 

:2351 

dd 

:1533

o 

shift + ins 