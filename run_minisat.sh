#!/bin/bash

rm -r minisat_puzzle_output
mkdir minisat_puzzle_output
for filename in puzzles/*; do
  minisat "$filename" "minisat_puzzle_output/`basename $filename`"
done