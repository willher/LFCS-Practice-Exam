# Running sripts and manipulating their outputs is an important skill to understand as a system administrator
#
#   1. run the sript at /usr/bin/samplescript.sh and append the standard out to the file at /usr/script/sampleone.txt
#   2. run the script at /usr/bin/samplescript2.sh and override the contents of the file at /usr/script/sampletwo.txt with the standard error
#   3. run the script at /usr/bin/samplescript.sh and use the standard out and standard error as a standard in for script /usr/bin/samplescript2.sh 
#   4. append the standarrd out of this to /usr/script/samplethree.txt
#
#----------------------------------------------------------------------------------------------------------------------------------------------------------

# go to the directory where the scripts are located so you can use auto complete
cd /usr/bin 

# appends standard out from script.sh 
./samplescript.sh >> /usr/script/sampleone.txt

# writes standard error to text.txt
./samplescript2.sh 2> /usr/script/sampletwo.txt

# writes both standard out and stardard error to a file intermediate.txt
./samplescript.sh 2&> intermediate.txt

# uses the intermediate.txt file as an input to script2.sh 
./samplescript2.sh < intermediate.txt >> /usr/script/samplethree.txt 

