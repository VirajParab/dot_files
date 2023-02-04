#!/bin/bash

# Get the repository name from the first argument
repo_name=$1

# Get the user name from the second argument
user_name=$2

# Create the root directory
mkdir $repo_name
cd $repo_name

# Create the cmd directory
mkdir cmd
cd cmd
mkdir server
cd ..

# Create the internal directory
mkdir internal
cd internal
mkdir app
cd ..

# Create the pkg directory
mkdir pkg
cd pkg
mkdir handler
cd ..

# Initialize the go.mod file with the specified module path
go mod init "github.com/$user_name/$repo_name"

# Create the README.md file
touch README.md
