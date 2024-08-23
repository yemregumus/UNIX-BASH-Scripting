#!/bin/bash

# Title: lab2_activity5.bash
# Student Name: Yunus Emre Gumus
# Student E-mail: ygumus@myseneca.ca
# Student ID Number: 150331197

# Clears the screen at runtime
clear

# Script header code
echo "UNX510 Summer 2024 - Lab 2, Activity 5"
echo "---------------------------------------"

# Explanation: The following starter code checks if the pre-defined variable 'value' is even, and prints the positive result to screen. 
# Instructions: Create a single modified version of the code below that accomplishes both tasks.
# Task 1: Make sure the input number is greater than 0 and less than 1000 and check if it is an even number.
# Task 2: Change the script to read a number as input from a positional parameter instead of a pre-edfined value, and display whether it is an even number or odd number.

# STARTER CODE #

# Task 1: Make sure the input number is greater than 0 and less than 1000 and check if it is an even number.
# Task 1 is provided to you as part of your starter code for this activity.

# Display task number for easy identification during script run.
echo "| Task 1 |"

# Pre-defined value. This should be replaced with user keyboard input.
value=34

# First check that the number inside $value is greater than 0 and less than 1000.
if [ $value -gt 0 ]  && [ $value -lt 1000 ]
then
    # If so, then divide that number by 2. The % arithmetic operator is for division, but displays any remainder if the division is unequal. If the division is a whole number, there are no remainders and the result would be a 0. Since we're dividing by 2, we'll have a remainder if the starting number is an odd number. We then use the -eq to compare that result with 0. If they match (both are zero), then the condition evaluates to true, and the echo within runs.
    if [ $((value % 2)) -eq 0 ]
    then
        # Use variable expansion to display the number itself in the echo.
        echo "The number $value is even."
        echo ""
    fi
else
    echo "Error: You must supply a value between 0-1000."
    exit 3
fi

# Task 2: Change the script from Task 1 to read a number from positional parameters instead of a pre-edfined value, and display whether it is an even number or odd number.

# Display task number for easy identification during script run.
echo "| Task 2 |"

# Check that the user has supplied only one positional parameter. (This check is supplied for you.)
if [ "$#" -ne 1 ]; then
    echo "Error: You must supply exactly one positional parameter when running this script."
    echo "Usage: $0 <value>"
    echo "Example: $0 34"
    exit 2
fi

# Define the value variable using the positional parameter.
value=$1

# Paste in the Task 1 code and modify below.
if [ $value -gt 0 ] && [ $value -lt 1000 ]; then
    # Check if the number is even.
    if [ $((value % 2)) -eq 0 ]; then
        echo "The number $value is even."
    else
        echo "The number $value is odd."
    fi
else
    echo "Error: You must supply a value between 0-1000."
    exit 3
fi
