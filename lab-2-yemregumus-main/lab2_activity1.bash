#!/bin/bash

# Title: lab2_activity1.bash
# Student Name: Yunus Emre Gumus
# Student E-mail: ygumus@myseneca.ca
# Student ID Number: 150331197

# Clears the screen at runtime
clear

# Script header code
echo "UNX510 Summer 2024 - Lab 2, Activity 1"
echo "---------------------------------------"

# Task 1: Static calculations
# Instructions: This script will calculate the area of a rectangle, width is 100 and height is 250.
# When you execute the script, it displays the following on screen:
# "The area of a rectangle with the size (100 by 250) is 25000."
# Tip: Do not staticly code the echo! This should actually calculate using the required multiplication of 100 * 250. 

echo "| Task 1 |"

# Begin code:

# Define the width and height variables below.
width=100
height=250


# Define a new variable, area, that contains the calculations of multiplying the width and height variables together.
area=$((width*height))

# Print "The area of a rectangle with the size (100 by 250) is 25000." using the width, height, and area varables defined above.
echo "The area of a rectangle with the size (${width} by ${height}) is ${area}."


# Task 2: Dynamic calculations based on user interaction.
# Paste your completed script from above, and modify this version to ask the user to enter 'width' and 'height'. You should be able to reuse the variables in your calculations and output.

echo ""
echo "| Task 2 |"

# Begin code:

# Ask the user for first the width, and then the height. Store those answers in the width and height variables.
# Example output on screen: "Enter desired width: "

echo "Enter desired width: "
read width

# Example output on screen: "Enter desired height: "

echo "Enter desired height: "
read height


# Define a new variable, area, that contains the calculations of multiplying the width and height variables together.
area=$((width*height))

# Print "The area of a rectangle with the size (100 by 250) is 25000." using the width, height, and area varables defined above.
echo "The area of a rectangle with the size (${width} by ${height}) is ${area}."