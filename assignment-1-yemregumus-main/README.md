# Instructions
Read the instructions below to setup git and GitHub on your Linux VM and how to submit your code to GitHub Classroom.

# Setup
### First-time Setup
This will setup and configure git and GitHub on your Linux VM. Run everything as your local user, unless indicated otherwise. (If you have already done this for Lab 2, you can skip to *Per-Assignment Setup*.)

1. Update the system and install git.
```bash
sudo yum -y update
sudo yum -y install git
```

2. Configure git with your full name and Seneca e-mail address:
```bash
git config --global user.name "Firstname Lastname"
git config --global user.email "yoursenecaid@myseneca.ca"
```
3. You may want to add a key to Github to reduce password prompts. (optional) 

    Generate an SSH key-pair to add to your GitHub account:
```bash
ssh-keygen  # Follow defaults (hit enter)
cat ~/.ssh/id_rsa.pub
```
4. Copy/paste your public key from above (starting from 'ssh-rsa') to your GitHub account:
    > https://github.com/settings/ssh/new


### Per-Assignment Setup
This will download Assignment 1, Question 3 locally, allowing you to work on your scripts and upload (push) them back up to GitHub.

6. Clone your assingment repository into your ~/unx510/assignment1/q3/ directory using SSH:
```bash
git clone git@github.com:unx510/assignment-1-yourgithubusername.git ~/unx510/assignment1/q3/
```

# Submission
When you have completed all activities in this assignment question, no submission to Blackboard is necessary. Complete the following steps:

1. Change into your assignment1/q3 directory:
```bash
cd ~/unx510/assignment1/q3/
pwd #confirm that you are in the right directory
```

2. Commit and push (upload) your Assignment 1 - Question 3 work:
```bash
git add q3.bash
git commit -m "Individual message or note."
git push
```

You can make changes to your scripts and reupload as many times as you like until the due date. Make sure you commit+push to do so.

**Note:** Your assingment is automatically submitted at the due date and time using the last published code.
