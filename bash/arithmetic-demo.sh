#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second
# number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#take user variables
read -p "Okay, but I'm going to need three numbers from you. Number 1? " num1
read -p "Number 2? " num2
read -p "Number 3? " num3

#perform arithmetic on the varibales and supply labels
echo "Great, your sum is $(($num1 + $num2 + $num3))."
echo "Your product is $(($num1 * $num2 * $num3))."
