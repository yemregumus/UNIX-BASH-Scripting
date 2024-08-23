#!/bin/bash

# Title: lab10_activity3.bash
# Student Name: Yunus Emre Gumus
# Student E-mail: ygumus@myseneca.ca
# Student ID Number: 150331197

# Clears the screen at runtime
clear

# Script header code
echo "UNX510 Summer 2024 - Lab 10, Activity 3"
echo "---------------------------------------"

# Task 1: Create a basic text file with pre-populated data.
# Create script code which will:
# 1. Creates a basic text file at the following location n your Azure Linx VM: ~/unx510/lab10/mydata.txt
# 1a. Give this file the following permissions: 755
# 2. Enter the names of 15 people from our class in the file, one per line.
# 2a. IMPORTANT: This is *static* data. You are not asking the user to input 15 names. You are using this script to create the empty mydata.txt file at runtime,
# and appending the 15 names you've hard-coded into this script. This can be as simple as a series of echo statements that redirect into the file.
# (Make sure to use >>, not >)
# 2b. Use full names, including spaces.
# 2b Example of a single line: Chris Johnson
# 2c. To view the names of the students in our section, go to our classroom in Blackboard, and on the top left of the screen, select the "Roster" link.
# 3. Confirm your work by displaying, on screen from the script, the following information:
# 3a. The results of running: ls -l ~/unx510/lab10/mydata.txt
# 3b. The results of running: cat ~/unx510/lab10/mydata.txt

echo "| Task 1 |"

# Begin code:
# Create directory and file
mkdir -p ~/unx510/lab10
touch ~/unx510/lab10/mydata.txt

# Set permissions to 755
chmod 755 ~/unx510/lab10/mydata.txt

# Pre-populate the file with 15 names
cat <<EOL > ~/unx510/lab10/mydata.txt
Oliver Stone
Sophia Williams
Liam Johnson
Isabella Brown
Noah Davis
Mia Miller
Elijah Wilson
Ava Moore
James Taylor
Emily Anderson
Benjamin Thomas
Charlotte Jackson
Lucas White
Amelia Harris
Mason Martin
EOL


# Confirm the work
echo "File permissions and details:"
ls -l ~/unx510/lab10/mydata.txt
echo "Contents of the file:"
cat ~/unx510/lab10/mydata.txt



# Task 2: 
# Create script code which will:
# 1. Reads the file you created in Task 1 and stores each name (i.e each full line) into an array called: people
# 1a. One line in the text file, one element in the array. (Be careful to deal with spaces!)
# 1b. Hint: "read –a people <<<$(cat mydata.txt)" or, "people=($(cat mydata.txt))"
# 2. Create a loop to display the array in reverse order.
# 2a. Include both the array element number and the value inside.
# 2a Example: Roster Entry 5: Chris Johnson
# 2a Example: Roster Entry 4: Garrus Vakarian

echo "| Task 2 |"

# Begin code:

# Read the file and store each line into an array called 'people'
mapfile -t people < ~/unx510/lab10/mydata.txt

# Loop to display the array in reverse order
echo "Roster in reverse order:"
for (( idx=${#people[@]}-1 ; idx>=0 ; idx-- )); do
    echo "Roster Entry $((idx+1)): ${people[idx]}"
done
