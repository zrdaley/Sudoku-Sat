#!/bin/bash

rm solved_puzzles.txt
touch solved_puzzles.txt

i=1
for filename in minisat_puzzle_output/*; do
  echo "Grid $i" >> solved_puzzles.txt
  ./sat2sud "$filename" >> solved_puzzles.txt
  i=$((i + 1))
done