# Open the file under
# /home/student/textreferences/editme.txt and
# complete the following tasks:
# 1. Move line 7777 to line 1.
# 2. Remove line 7000.
# 3. Replace every occurrence of the word Earth shown with
# an uppercase E, with the word Globe.
# 4. Add a new line at the very end of the document that
# contains Auctores Varii
#***NOTE: I'm sharing the exact keystrokes I use in vim to accomplish this.  Keep in mind with copy paste, vim, and your imagination there are many ways to do this
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------

https://ozguryarikkas.medium.com/lfcs-linux-foundation-system-administrator-exam-study-guide-with-exercises-part-1-d9ddc9efc39f

printf '7777m0\nw\n' | ed editme.txt

sed -i '7000d' editme.txt

sed -i 's/Earth/Globe/g' editme.txt

echo "Auctores Varii" >> editme.txt