#!/bin/bash

name="World"

echo "Hello $name!"

echo "Script name is $0"

# number of arguments
echo "$# args passed"

# all args as separate words
echo $@

# all args as one string
echo "1 string - $*"

# current shell process id
echo "shell process id: $$"

# exit status of the last command 
echo "exit status: $?"

# process id(PID) of the most recent background job
echo $!

# last arg of the previous command, or the last command's path
echo $_

echo "Shell options: $-"

echo "For loop:"
for arg in "$@"; do
    echo "arg: $arg"
done

# command
today=$(date)
echo "Today is $today"

# math eval
sum=$((2 + 3))
echo "The sum is $sum"

count=$(wc -l < script.sh)
next=$((count + 1))
echo "Next: $next"

# overwrite file
echo hello > out.txt
# append to a file
echo world >> out.txt

# take input from a file
sort < names.txt

# send standard error
ls no_such_file 2> error.txt

# send 
ls &> all.txt

cat file.txt | wc -l

# Globbing

# * matches any string of characters
echo ".txt files:"
ls *.txt
# ? matches exactly 1 character
ls names?txt
# [abc] - 1 character in the set
# [a-z] - 1 character in a range
ls [ab]*.log

# Escaping
echo "Escaping:"
echo hello\" world
echo 'hello $USER'
echo "hello $USER"