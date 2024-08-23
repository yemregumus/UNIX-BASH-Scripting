#!/bin/bash

# Title: lab10_activity2.bash
# Student Name: Yunus Emre Gumus
# Student E-mail: ygumus@myseneca.ca
# Student ID Number: 150331197

# Clears the screen at runtime
clear

# Script header code
echo "UNX510 Summer 2024 - Lab 10, Activity 2"
echo "---------------------------------------"

# Task 1: Array pre-poluation and display.
# Create script code which will:
# 1. Initializes an array called: spring
# 2. This array must be pre-poluated with the following data (Each word is one element. Do not include spaces in the array values.)
# 2a. Array data: I spring like spring on spring in spring
# 3. Output this pre-populated array to the user onscreen, making sure that spaces are printed appropriately (but not added to the array, this is purely for output).
# 3a. Example print: "The current contents of the array 'spring' are: I spring like spring on spring in spring"
# 3b. Do not hardcode this output. It should pull from the array. You'll need that for Task 2.

echo "| Task 1 |"

# Begin code:

# Initialize an array called 'spring'
spring=("I" "spring" "like" "spring" "on" "spring" "in" "spring")

# Output the pre-populated array to the user
echo -n "The current contents of the array 'spring' are: "
for word in "${spring[@]}"; do
    echo -n "$word "
done
echo  # Print a newline

# Task 2: Array manipulation
# Create script code which will:
# 1. Will ask the user to choose a single word that will replace all instances of 'spring' in the array that was just displayed.
# 1a. A single word is all that's expected and you can write your code with that assumption. However, if you'd like to write error checking to ensure that's the case,
# you'll get bonus marks. (If it works!)
# 2. Replace all array elements that contain the value 'spring' with the value supplied by the user. To be clear, you are changing the array element's values directly.
# 3. Display the entire array once again as you did in Activity 2, Task 1, Step 3a. It may be helpful to denote that it has been changed by the user, but I leave that 
# choice to you.
# 3a. As in Task 1, do not harcore this output.

echo "| Task 2 |"

# Begin code:
# Ask the user to choose a single word to replace all instances of 'spring' in the array
echo -n "Please enter a single word to replace all instances of 'spring': "
read replacement_word

# Replace all instances of 'spring' in the array
for i in "${!spring[@]}"; do
    if [ "${spring[$i]}" == "spring" ]; then
        spring[$i]="$replacement_word"
    fi
done

# Output the modified array to the user
echo -n "The modified contents of the array 'spring' are: "
for word in "${spring[@]}"; do
    echo -n "$word "
done
echo  # Print a newline