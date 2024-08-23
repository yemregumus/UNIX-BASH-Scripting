[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/LmO-omgq)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-718a45dd9cf7e7f842a935f5ebbe5719a5e09af4491e668f4dbf3b35d5cca122.svg)](https://classroom.github.com/online_ide?assignment_repo_id=15199587&assignment_repo_type=AssignmentRepo)
# Instructions
Read the instructions below to setup git and GitHub on your Linux VM and how to submit your code to GitHub Classroom.

# Setup
### First-time Setup
This will setup and configure git and GitHub on your Linux VM. Run everything as your local user, unless indicated otherwise.

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

5. If you have an exisiting unx510 directory, rename it:
```bash
mv ~/unx510 ~/old_unx510
```
### Per-Lab Setup
This will download Lab 2 locally, allowing you to work on your scripts and upload (push) them back up to GitHub.

6. Clone your lab repository into your ~/unx510/lab2 directory using SSH:
```bash
git clone git@github.com:unx510/lab-2-yourgithubusername.git ~/unx510/lab2/
```

# Submission
When you have completed all activities in this lab, no submission to Blackboard is necessary. Complete the following steps:

1. Change into your lab2 directory:
```bash
cd ~/unx510/lab2/
pwd #confirm that you are in the right directory
```

2. Commit and push (upload) your lab work:
```bash
git add lab*
git commit -m "Individual message or note."
git push
```

You can make changes to your scripts and reupload as many times as you like until the due date. Make sure you commit+push to do so.

**Note:** Your lab is automatically submitted at the due date and time using the last published code. Any changes you publish after the due date won't be marked or seen by your professor.
