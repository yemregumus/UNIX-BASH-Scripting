#!/bin/bash

# Title: lab2_activity6.bash
# Student Name: Yunus Emre Gumus
# Student E-mail: ygumus@myseneca.ca
# Student ID Number: 150331197

# Clears the screen at runtime
clear

# Script header code
echo "UNX510 Summer 2024 - Lab 2, Activity 6"
echo "---------------------------------------"

# Explanation: This type of activity is called a code walkthrough. You are likely familiar with this kind of task.

# Instructions: Run the following script and analyze the code to understand it.
# Explain how it works by adding a Bash comment above each line detailing what that line does.
# Refer to the slides as well as your previous ULI101 knowledge.
# ULI101 tutorials can be found here: https://seneca-ictoer.github.io/ULI101/A-Tutorials/tutorial2

# Print "Please enter an integer: " directly to the terminal.
echo -n "Please enter an integer: " > /dev/tty

# Read user input from terminal and sotre it in the variable 'number'
read number

# Checks if the variable 'number' is empty or contains chars that are not digits and discards it if its not a digit.
if [ -z "$number" ] || echo $number | grep "[^0-9]" > /dev/null
then
    # Prints a message to terminal showing the input and stating it is not a valid integer
    echo "ERROR: Sorry, '$number' is not a valid integer." >&2
else
    # Prints a message to terminal stating the input is a valid integer
    echo "Valid integer detected. Thank you!"
fi # closure of if