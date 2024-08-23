#!/bin/bash

#####################################################################################
# UNX510 – Assignment 1                                                             #
# I declare that this assignment is my own work in accordance with Seneca Academic  #
# Policy.                                                                           #
#                                                                                   #
# No part of this assignment has been copied manually or electronically from any    #
# other source (including web sites) or distributed to other students.              #
#                                                                                   #
# Name: Yunus Emre Gumus Student ID: 150331197 Date: July 7th, 2024                 #
#                                                                                   #
#####################################################################################

# Purpose: You are asked to develop a script which checks whether two given files (contents) are
# identical.

# Requirements:
#
# 1. Check whether user provided the correct number of arguments. Display proper error message if
# required.
#
# 2. Check whether both filenames exist. Display proper error message if required.
#
# 3. Calculate the number of bytes/characters in each file and if the number of characters in both files
# are the same, the script displays “Files are similar”. Otherwise it displays “Files are different.”
#
# Tip: Make sure to handle errors, check file existence, and validate input/arguments.

# Usage: ./q3.bash filename1 filename2

#!/bin/bash
error_message() {
  echo "$1" >&2
  exit 1
}

if [ "$#" -ne 2 ]; 
   then
   error_message "Usage: $0 filename1 filename2, you have to provide atleast 2 file names."
fi

file1="$1"
file2="$2"

if [ ! -e "$file1" ]; 
   then
   error_message "Error: $file1 does not exist."
elif [ ! -e "$file2" ]; 
   then
   error_message "Error: $file2 does not exist."
fi


size1=$(stat -c%s "$file1")
size2=$(stat -c%s "$file2")


if [ "$size1" -eq "$size2" ]; 
   then
   if cmp -s "$file1" "$file2"; then
      echo "Files are identical."
  else
      echo "Files have the same size but different contents."
  fi
else
   echo "Files are different."
fi