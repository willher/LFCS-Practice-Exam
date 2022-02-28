#   Logging questions
#   a. find all instances of 'joe' in the authenitication log
#   b. find all the errors logged containing 'help' in them and write them to a file
#   c. joe had an issue when running grep as root. find mentions of it and append them to a file

cd /var/log 

grep 'joe' secure 

grep 'help' message > file

grep 'joe' secure >> file 