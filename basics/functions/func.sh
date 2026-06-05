#!/bin/bash

function greet {
	echo "Hello, $1"
}

greet "Alex"

is_even() {
	$(($1 % 2)) -eq 0
}

double() {
	echo $(($1 * 2))
}

result=$(double 5)
echo $result
