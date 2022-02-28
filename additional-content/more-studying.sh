#1. Scripting options if/else/fi
#   
#  #!/bin/bash
#  
# prompt for an input
# read -p "enter a number between 1 and 100: " a
# read -p "enter a second number between 1 and 100: " b
#
# if [ $((a)) -gt $((b)) ]; then
#   echo $((a)) is greater than $((b))
# else
#   echo $((a)) is not greater than $((b))
# fi
#
# if [ $((a)) -lt $((b)) ]
#   echo $((a)) is less than $((b))
# else
#   echo $((a)) is NOT less than $((b))
# fi

#2. Scirpting options for/while/until
#
# #!/bin/bash 
# 
# for TIMER in 0 1 2 3 4 5
# do
#   echo "COunt Up: " $TIMER 
# done 
#
#
# TIMER=0
# while [ $TIMER -le 5 ]
# do
#   echo "Counting up: " $TIMER
#   ((TIMER ++))
# done
#
#
# TIMER=0
# 
# until [ $TIMER -gt ]
# do 
#   echo "Counting up: " $TIMER
#   ((TIMER++))
# done