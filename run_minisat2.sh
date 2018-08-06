#!/bin/bash

rm -r minisat2_puzzle_output
mkdir minisat2_puzzle_output
rm minisat2_puzzle_logs.txt
for filename in sud2sat2_puzzle_output/*; do
  minisat "$filename" "minisat2_puzzle_output/`basename $filename`" | grep "CPU time" >> minisat2_puzzle_logs.txt
  sleep 0.1
done