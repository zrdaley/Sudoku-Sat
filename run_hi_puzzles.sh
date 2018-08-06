#!/bin/bash

rm -r hi_puzzles
mkdir hi_puzzles
split -l 1 hi_puzzles_input.txt hi_puzzles/puzzle
cd hi_puzzles

for filename in *; do
  tail -n +2 "$filename" > "$filename.tmp" && mv "$filename.tmp" "$filename"
done

