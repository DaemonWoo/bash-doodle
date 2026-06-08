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

if grep "foo" file.txt; then
  echo "found"
fi

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

count=$(wc -l <script.sh)
next=$((count + 1))
echo "Next: $next"

# overwrite file
echo hello >out.txt
# append to a file
echo world >>out.txt

# take input from a file
sort <names.txt

# send standard error
ls no_such_file 2>error.txt

# send
ls &>all.txt

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

# if
name="Alex"

if [[ $name == A* ]]; then
	echo "hi"
else
	echo "who are you?"
fi
# or test
if test $name = "Alex"; then
	echo "hi"
else
	echo "who are you?"
fi

trap 'echo "caught Ctrl+C"' INT

# case
read -r answer

case "$answer" in
yes | y)
	echo "you said yes"
	;;
no | n)
	echo "you said no"
	;;
*)
	echo "unknown answer"
	;;
esac

# pattern template
# % - delete from tail
# %% - delete from tail 1st match to the start
# * - any symbols
# # - delete from start
# ## - delete the longest match from the start
# ${var#pattern}
file="photo.jpg"
echo "${file%.jpg}"

# Masks
# *.txt - any symbols
# ?.txt - any symbol
# [abc].txt - 1 symbol from set
# [a-z].txt - 1 symbol from range