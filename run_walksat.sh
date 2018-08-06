#!/bin/bash

rm walksat_puzzle_logs.txt
for filename in sud2sat_puzzle_output/*; do
  cat "$filename" | ./walksat -numsol 1 | grep "total elapsed seconds = " >> walksat_puzzle_logs.txt
  sleep 0.1
done