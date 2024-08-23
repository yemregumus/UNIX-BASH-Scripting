#!/bin/bash

# Title: lab2_activity4.bash
# Student Name: Yunus Emre Gumus
# Student E-mail: ygumus@myseneca.ca
# Student ID Number: 150331197

# Clears the screen at runtime
clear

# Script header code
echo "UNX510 Summer 2024 - Lab 2, Activity 4"
echo "---------------------------------------"

# Explanation: The following starter code checks if the pre-defined variable 'value' is even, and prints the positive result to screen. 
# Instructions: Create a single modified version of the code below that accomplishes both tasks.
# Task 1: Make sure the input number is greater than 0 and less than 1000 and check if it is an even number.
# Task 2: Change the script to read a number from input instead of a pre-edfined value, and display whether it is an even number or odd number.

# STARTER CODE #

# Task 1: Make sure the input number is greater than 0 and less than 1000 and check if it is an even number.
# Task 1 is provided to you as part of your starter code for this activity.

act4_task1() {
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
        fi
    else
        echo "Error: You must supply a value between 0-1000."
        exit 3
    fi
}

# Task 2: Paste the code from Task 1 below and change it to read a number from user input instead of a pre-defined value, and display whether it is an even number OR odd number.

act4_task2() {
    # Display task number for easy identification during script run.
    echo "| Task 2 |"
    # Pre-defined value. This should be replaced with user keyboard input.
    read -p "Enter a number: " value

    # First check that the number inside $value is greater than 0 and less than 1000.
    if [ $value -gt 0 ]  && [ $value -lt 1000 ]
    then
        # If so, then divide that number by 2. The % arithmetic operator is for division, but displays any remainder if the division is unequal. If the division is a whole number, there are no remainders and the result would be a 0. Since we're dividing by 2, we'll have a remainder if the starting number is an odd number. We then use the -eq to compare that result with 0. If they match (both are zero), then the condition evaluates to true, and the echo within runs.
        if [ $((value % 2)) -eq 0 ]
        then
            # Use variable expansion to display the number itself in the echo.
            echo "The number $value is even."
        fi
    else
        echo "Error: You must supply a value between 0-1000."
        exit 3
    fi


}


# Main program function calls 
# Load program on a per-task basis using positional parameters
# This is pre-supplied code. Do not change!

if [ "$1" == "task1" ]; then
    act4_task1
elif [ "$1" == "task2" ]; then
    act4_task2
else
    echo "Usage: $0 task#"
    echo "Example: $0 task1"
fi