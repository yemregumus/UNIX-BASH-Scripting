#!/bin/bash

# Title: lab3_activity2.bash
# Student Name: Yunus Emre Gumus
# Student E-mail: ygumus@myseneca.ca
# Student ID Number: 150331197

# Clears the screen at runtime
clear

# Script header code
echo "UNX510 Summer 2024 - Lab 2, Activity 2"
echo "---------------------------------------"

# Task 1: Calculations using positional parameters. (There is only one task)
# Instructions: This script will calculate the area of a rectangle using positional parameter 1 and 2 as width and height.
# When you execute the script as such, ./lab3_activity2.bash 12 10, it displays the following on screen:
# “The area of a rectangle with the size (12 by 10) is 120”.

# Tip: Do not statically code the echo! This should actually calculate using the required multiplication of the two *positional parameters* supplied by the user at runtime.

# Tip 2: Paste in your Lab 2, Activity 1 code below and modify using the instructions above.

echo "| Task 1 |"

# Begin code:

# Check that the user has supplied two positional parameters. (This check is supplied for you.)
if [ "$#" -ne 2 ]; then
    echo "Error: You must supply exactly two positional parameters when running this script."
    echo "Usage: $0 <width> <height>"
    echo "Example: $0 12 10"
    exit 2
fi

# Define the width and height variables using positional parameters.
width=$1
height=$2

# Define a new variable, area, that contains the calculations of multiplying the width and height variables together.
area=$((width*height))

# Print "The area of a rectangle with the size (width by height) is area."
echo "The area of a rectangle with the size (${width} by ${height}) is ${area}."

