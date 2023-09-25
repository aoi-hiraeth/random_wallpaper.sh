#!/bin/bash

killall swaybg
shopt -s nullglob
files=(~/Обои/*)

if (( ${#files[@]} )); then
    random_file="${files[RANDOM % ${#files[@]}]}"
    swaybg -i "$random_file" & disown
else
    echo "No files found in the directory"
fi
