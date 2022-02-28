# Open the file under /home/student/textreferences/editme.txt and complete the following tasks: 
#     1.Move line 7777 to line 1. 
#     2.Remove line 7000. 
#     3.Replace every occurrence of the word Earth shown with an uppercase E, with the word Globe. 
#     4.Add a new line at the very end of the document that contains Auctores Varii. 

vi /home/student/textreferences/editme.txt 

:7777

dd

:1

P 

:7000

dd

:%s/Earth/Globe/g 

G

o 

Auctores Varii 

wq!

