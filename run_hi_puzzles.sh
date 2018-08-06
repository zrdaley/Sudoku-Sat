#!/bin/bash

rm -r hi_puzzles
mkdir hi_puzzles
split -l 1 puzzles_hi_encoding.txt hi_puzzles/puzzle
cd hi_puzzles

for filename in *; do
  tail  "$filename" > "$filename.tmp" && mv "$filename.tmp" "$filename"
done

cd ..
rm -r sud2sat_hi_puzzle_output
mkdir sud2sat_hi_puzzle_output
for filename in puzzles/*; do
  ./sud2satHI "$filename" "sud2sat_hi_puzzle_output/`basename $filename`"
done