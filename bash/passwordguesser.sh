#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

read -p "gimme a password guess " myString
referenceString="password"
count=1

while [ -n $correct ]
  do
    if [ $myString = $referenceString ]
      then
        echo "Correct!"
        break
    elif [ $myString != $referenceString ] && [ $count -eq 1 ]
      then
        echo "Incorrect. Try again."
        count=2
        read -p "gimme a new password guess " myString
    elif [ $myString != $referenceString ] && [ $count -eq 2 ]
      then
        echo "Incorrect. Try again."
        count=3
        read -p "gimme a new password guess " myString
    elif [ $myString != $referenceString ] && [ $count -eq 3 ]
      then
        echo "Incorrect. Try again."
        count=4
        read -p "gimme a new password guess " myString
    elif [ $myString != $referenceString ] && [ $count -eq 4 ]
      then
        echo "Incorrect. Try again."
        count=5
        read -p "gimme a new password guess " myString
    else
      echo "too many tries! go away."
      break
    fi
done
