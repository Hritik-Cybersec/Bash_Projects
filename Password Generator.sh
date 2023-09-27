#!/bin/bash
#This is a Password generator 

echo "This is a simple password generator"
echo -n "Please enter the length of the password : "
read -r PASS_LENGTH

for p in $(seq 1 5);
do
    openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done