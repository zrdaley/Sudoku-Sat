#!/bin/bash

rm -r minisat_hi_puzzle_output
mkdir minisat_hi_puzzle_output
rm minisat_puzzle_logs.txt
for filename in sud2sat_hi_puzzle_output/*; do
  minisat "$filename" "minisat_hi_puzzle_output/`basename $filename`" | grep "CPU time" >> minisat_hi_puzzle_logs.txt
  sleep 0.1
done