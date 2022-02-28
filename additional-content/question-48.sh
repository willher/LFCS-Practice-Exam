#   a. Append the standard output of script.sh to a file text.txt
#   b. Write the standard error output of script.sh and override a file named text2.txt.
#   c. Write the standard error and standard out of script.sh and pipe them into the standard input of script2.sh and append the output to text2.txt
#
./script.sh >> text.txt

./script.sh 2> text.txt

./script.sh 2&> intermediate.txt

./script2.sh < intermediate.txt >> text.txt 