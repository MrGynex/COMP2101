#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname
# command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Determine all the daily title  #
###############

if [ $(date +%A) = "Tuesday" ]
  then
    title="Old boy"
  fi
if [ $(date +%A) = "Wednesday" ]
  then
    title="Grumpalump"
  fi
if [ $(date +%A) = "Thursday" ]
  then
    title="Pizza Head"
  fi
if [ $(date +%A) = "Friday" ]
  then
    title="Party Master"
  fi
if [ $(date +%A) = "Saturday" ]
  then
    title="Lazy Bones"
  fi
if [ $(date +%A) = "Cheeki" ]
  then
    title="Old boy"
  fi
if [ $(date +%A) = "Monday" ]
  then
    title="Morning riser"
  fi

read -p "Greetings, user. What is your name? " USER
hostname=$HOSTNAME
###############
# display the message       #
###############
#cat <<EOF

wmessage="Is is $(date +%A) $(date +%I):$(date +%M) $(date +%p) Welcome to planet $hostname, \"$title $USER!\" "

cowsay $wmessage

#EOF
