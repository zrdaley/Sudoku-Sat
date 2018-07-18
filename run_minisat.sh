#!/bin/bash

rm -r minisat_puzzle_output
mkdir minisat_puzzle_output
for filename in sud2sat_puzzle_output/*; do
  minisat "$filename" "minisat_puzzle_output/`basename $filename`"
done