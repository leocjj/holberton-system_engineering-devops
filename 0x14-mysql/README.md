# Project 0x14.

# Mysql

For this project, students are expected to look at these concepts:

    Database administration
    Web stack debugging

## Resources

### Read or watch:

    What is a primary-replica cluster
    MySQL primary replica setup
    Build a robust database backup strategy

### man or help:

    mysqldump

## Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

### General

    What is the main role of a database
    What is a database replica
    What is the purpose of a database replica
    Why database backups need to be stored in different physical locations
    What operation should you regularly perform to make sure that your database backup strategy actually works


## Requirements

### General

    Allowed editors: vi, vim, emacs
    All your files will be interpreted on Ubuntu 16.04 LTS
    All your files should end with a new line
    A README.md file, at the root of the folder of the project, is mandatory
    All your Bash script files must be executable
    Your Bash script must pass Shellcheck (version 0.3.7-5~ubuntu16.04.1 via apt-get) without any error
    The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
    The second line of all your Bash scripts should be a comment explaining what is the script doing



## Tasks

 0. Install MySQL mandatory
First things first, let’s get MySQL installed on both your web-01 and web-02 servers.

 1. Let us in! mandatory
In order for us to verify that your servers are properly configured, we need you to create a user and password for both MySQL databases which will allow the checker access to them.

 2. If only you could see what I've seen with your eyes mandatory
In order for you to set up replication, you’ll need to have a database with at least one table and one row in your primary MySQL server (web-01) to replicate from.

 3. Quite an experience to live in fear, isn't it? mandatory
Before you get started with your primary-replica synchronization, you need one more thing in place. On your primary MySQL server (web-01), create a new user for the replica server.

 4. Setup a Primary-Replica infrastructure using MySQL mandatory

 5. MySQL backup mandatory 
Write a Bash script that generates a MySQL dump and creates a compressed archive out of it.


## Author

* **Leonardo Calderon J.** - *Initial work* - [LeoCJJ](https://github.com/leocjj)
04/23/2020

