#!/usr/bin/env bash 

colors=("red" "green" "blue")
echo "${colors[1]}"

colors+=("yellow")

echo "${colors[@]}"

for color in "${colors[@]}"; do
	echo "$color"
done

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