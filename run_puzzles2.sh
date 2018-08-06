#!/bin/bash

rm -r puzzles
mkdir puzzles
split -l 10 puzzles.txt puzzles/puzzle
cd puzzles

for filename in *; do
  tail -n +2 "$filename" > "$filename.tmp" && mv "$filename.tmp" "$filename"
done

cd ..
rm -r sud2sat2_puzzle_output
mkdir sud2sat2_puzzle_output
for filename in puzzles/*; do
  ./sud2sat2 "$filename" "sud2sat2_puzzle_output/`basename $filename`"
done