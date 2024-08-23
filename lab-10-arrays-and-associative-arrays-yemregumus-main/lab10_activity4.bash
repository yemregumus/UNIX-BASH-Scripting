#!/bin/bash

# Title: lab10_activity4.bash
# Student Name: Yunus Emre Gumus
# Student E-mail: ygumus@myseneca.ca
# Student ID Number: 150331197

# Clears the screen at runtime
clear

# Script header code
echo "UNX510 Summer 2024 - Lab 10, Activity 4"
echo "---------------------------------------"

# Task 1: Create an associative array with pre-populated data.
# Create script code which will:
# 1. Create an associative array called: userDatabase
# 2. Add 5 different pairs of usernames/password combinations.
# 2a. This data is hard-coded. Do not ask the user for this information.
# 2b. Use your own example username and password. The example displayed below is only for formatting.
# 2b. Do NOT use your actual passwords! PLEASE. You will make my security soul cry.

# Begin code:
# Task 1: Create an associative array with pre-populated data.
echo "| Task 1 |"

# Begin code for Task 1:
declare -A userDatabase

# Adding 5 different pairs of usernames/password combinations
userDatabase=(
    ["User1"]="SuperSekritPasswd"
    ["cjohnsno30"]="DontTellMom"
    ["neo"]="theone"
    ["zerocool"]="hacktheplanet"
    ["bob"]="password"
)

# Task 2: Display the associative array.
# Create script code which will:
# 1. Display all array elements on screen. You are displaying both the key and the associated value together on one line.
# 2. This task includes a specific output format. Your output should match (aside from different username/password values).
# 2. Output target below (ignore the # characters): 

#############################################
# Security Level 10 - Credentials Confirmed
# Accessing user login information.
# Display Format: Username - Password
#
# 1. User1 - SuperSekritPasswd
# 2. cjohnsno30 - DontTellMom
# 3. neo - theone
# 4. zerocool - hacktheplanet
# 5. bob - password
#
# User login information complete.
#############################################
echo "| Task 2 |"

# Begin code:

echo "#############################################"
echo "# Security Level 10 - Credentials Confirmed"
echo "# Accessing user login information."
echo "# Display Format: Username - Password"
echo "#"
index=1
for username in "${!userDatabase[@]}"; do
    echo "# $index. $username - ${userDatabase[$username]}"
    ((index++))
done
echo "#"
echo "# User login information complete."
echo "#############################################"
