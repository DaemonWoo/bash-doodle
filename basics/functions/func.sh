#!/bin/bash

function greet {
	local l="Local"
	g="Global"
	echo "Hello, $1"
}

greet "Alex"

echo "$g"
echo "$l"

is_even() {
	$(($1 % 2)) -eq 0
}

double() {
	echo $(($1 * 2))
}

result=$(double 5)
echo $result
