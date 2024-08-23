#!/bin/bash

# Title: lab10_activity1.bash
# Student Name: Yunus Emre Gumus
# Student E-mail: ygumus@myseneca.ca
# Student ID Number: 150331197

# Clears the screen at runtime
clear

# Script header code
echo "UNX510 Summer 2024 - Lab 10, Activity 1"
echo "---------------------------------------"

# Task 1: Initialize and populate array with on-screen user input.
# Create script code which will:
# 1. Asks the user to enter 6 cities, one at a time, and store them into an array called: city_name
# 1a. City names only. Do not include province/state, country, etc. May be helpful to include that in the user instuctions on screen (optional)
# 1b. Some cities use more than one word. Your script should be able to handle this *without* it creating two different array items.
# 1b Example: "New York" is one array item, not two.
# 1c. Very helpful to let the user know what number they're curretly on. Example: "Please enter city name 5: "

echo "| Task 1 |"

# Begin code:
# Initialize an empty array
city_name=()

# Prompt the user to enter 6 cities
for i in {1..6}; do
    echo -n "Please enter city name $i: "
    read city
    city_name+=("$city")
done

# Display the entered cities
echo "You have entered the following cities:"
for city in "${city_name[@]}"; do
    echo "$city"
done


# Task 2: Display array elements.
# Create script code which will:
# 1. Displays the array elements from *city_name* in reverse order on screen.
# 1a. In your output iteration, be clear to note which array item number is being used, along with the actual value. This should start with array item 6 and say so.
# 1a Example: "Array Item 6: New York" (or, alternatively, "The 6th city you entered was: New York")

echo "| Task 2 |"

# Begin code:
# Display the array elements in reverse order
for (( i=${#city_name[@]}-1; i>=0; i-- )); do
    item_number=$((i+1))
    echo "Array Item $item_number: ${city_name[i]}"
done