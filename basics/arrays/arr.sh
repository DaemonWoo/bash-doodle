#!/usr/bin/env bash 

colors=("red" "green" "blue")
echo "${colors[1]}"

colors+=("yellow")

echo "${colors[@]}"

for color in "${colors[@]}"; do
	echo "$color"
done

# get length
echo "${#colors[@]}"

# delete el
unset 'colors[1]'

echo "${#colors[@]}"

# get all indices
echo "${!colors[@]}"

# slice
echo "Slice:"
echo "${colors[@]:0:3}"

# map
declare -A user
user[name]="Alex"
user[role]="admin"

echo "${user[name]}"
echo "${user[role]}"

declare -A map_colors=(
	[red]="#FF0000" [green]="#00FF00" [blue]="#0000FF"
)

echo "${map_colors[green]}"

for key in "${!user[@]}"; do
  echo "$key -> ${user[$key]}"
done

echo "${!map_colors[@]}"