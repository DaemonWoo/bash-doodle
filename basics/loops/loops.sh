#!/bin/bash

for name in Alice Bob Charlie; do
	echo "Hello, $name"
done

for file in *.txt; do
	echo $file
done

# le - less than or equal to
count=1
while [ "$count" -le 5 ]; do
	echo "$count"
	count=$((count + 1))
done

until [ "$count" -le 0 ]; do
	echo $count
	count=$((count - 1))
done

# -gt - greater than
# -lt - less than
# -ge - greater or equal
# -eq - equal
# -ne - not equal

# loop over script args
for arg in "$@"; do
	echo "$arg"
done
