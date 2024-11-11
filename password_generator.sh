#This is a Automatic Password Generator

#!/bin/bash

echo "Welcome to Automatic Password Generator"
echo "Enter the Length of the password" 
read pass_length

# Generate and display 5 random passwords
for p in $(seq 1 5); #how many passwords you want here is 5
do
    Password=$(openssl rand -base64 48 | cut -c1-$pass_length)
    echo "Password $p: $Password"
done