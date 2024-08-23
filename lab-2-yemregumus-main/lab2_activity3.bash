#!/bin/bash

# Title: lab2_activity3.bash
# Student Name: Yunus Emre Gumus
# Student E-mail: ygumus@myseneca.ca
# Student ID Number: 150331197

# Clears the screen at runtime
clear

# Script header code
echo "UNX510 Summer 2024 - Lab 2, Activity 3"
echo "---------------------------------------"

# Task 1: Develop a script which ask user to enter a password and check whether the password is equal to “admin123”
# Task 1 is provided to you as part of your starter code for this activity.

# This is a function. Do not remove.
act1_task1() {
    # Display task number for easy identification during script run.
    echo "| Task 1 |"
    echo ""

    # Ask the user for their password as a keyboard prompt.
    read -p "Enter password: " password

    # Check the user's keyboard entry (stored within the $password variable) against the "admin123" string using an if conditional.
    if [ "$password" == "admin123" ]
    then
        echo "Login successful."
    else
        echo "ERROR: Incorrect password."
    fi
}
# End of function.

# Task 2: Paste the code from Task 1 above and modify the code to allow user to enter both ADMIN123 or admin123 as a password.
act1_task2() {
    # Display task number for easy identification during script run.
    echo "| Task 2 |"
    echo ""

    # Ask the user for their password as a keyboard prompt.
    read -p "Enter password: " password

    # Check the user's keyboard entry (stored within the $password variable) against both ADMIN123 or admin123 using an if conditional. (Hint: Consider the || OR operator. )
    if [ "$password" == "admin123" ] || [ "$password" == "ADMIN123" ]
    then
        echo "Login successful."
    else
        echo "ERROR: Incorrect password."
    fi

}

# Task 3: Modify the program in any way you can think of that allows the user to enter any of these: aDmin123, ADmin123, adMIN123
act1_task3() {
    # Display task number for easy identification during script run.
    echo "| Task 3 |"
    echo ""

    # Ask the user for their password as a keyboard prompt.
    read -p "Enter password: " password

    # Check the user's keyboard entry (stored within the $password variable) against aDmin123, ADmin123, adMIN123 using an if conditional.

    # Use regular expression character classes for case-insensitive matching.
    # Double square brackets [[ ]] are required for more complex condition checks, including regular expressions.
    # To use regular expression syntax for a comparison instead of a simple match, you must use =~ instead of ==.
    # Anchoring each end of the regular expression (^ and $) lets us define the entire password. Otherwise, 'extrastuffadmin123' would be a match.
    # TL;DR: Use regex and the regex string comparison operator.
    
    if [[ "$password" =~ ^[aA][dD][mM][iI][nN]123$ ]]; then
        echo "Login successful."
    else
        echo "ERROR: Incorrect password."
    fi
}

# Main program function calls 
# Load program on a per-task basis using positional parameters
# This is pre-supplied code. Do not change!

if [ "$1" == "task1" ]; then
    act1_task1
elif [ "$1" == "task2" ]; then
    act1_task2
elif [ "$1" == "task3" ]; then
    act1_task3
else
    echo "Usage: $0 task#"
    echo "Example: $0 task1"
fi