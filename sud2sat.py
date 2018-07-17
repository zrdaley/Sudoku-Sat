#!/usr/bin/env python
import sys

def write_to_cnf(c):
  output = open('output.txt', 'w')
  output.write('c {}\n'.format(sys.argv[1]))
  output.write('p cnf 729 {}\n'.format(len(c)))

  for clause in c:
    output.write(' '.join(map(str, clause)))
    output.write(' 0\n')

def to_base_9(i, j, k):
  return (81 * (i - 1) + 9 * (j - 1) + (k - 1) + 1)

def at_least_one_num_per_entry():
  for i in range(1, 10):
    for j in range(1, 10):
      clause = []
      for k in range(1, 10):
        clause.append(to_base_9(i, j, k))
      clauses.append(clause)

def distinct_row_and_col():
  for i in range(1, 10):
    for j in range(1,10):
      for k in range(1, 9):
        for l in range(k+1, 10):
          clauses.append([-to_base_9(i, k, j), -to_base_9(i, l, j)])
          clauses.append([-to_base_9(k, i, j), -to_base_9(l, i, j)])

def distinct_sub_grid():
  for i in range(1, 10):
    for j in range(0, 3):
      for k in range(0, 3):
        for l in range(1, 4):
          for m in range(1, 4):
            for n in range(m + 1, 4):
              clauses.append([
                -to_base_9(3 * j + l, 3 * k + m, i), 
                -to_base_9(3 * j + l, 3 * k + n, i)
              ])

  for i in range(1, 10): 
    for j in range(0, 3): 
      for k in range(0, 3): 
        for l in range(1, 4): 
          for m in range(1, 4): 
            for n in range(l + 1, 4): 
              for o in range(1, 4): 
                clauses.append([
                  -to_base_9(3 * j + l, 3 * k + m, i), 
                  -to_base_9(3 * j + n, 3 * k + o, i)
                ])

def unit_clauses():
  x = 1
  y = 1
  for i in range(81):
    if i % 9 == 0 and i != 0:
      y += 1
      x = 1
    value = sudoku[i]
    if value.isdigit() and value > 0:
      clauses.append([to_base_9(x, y, int(value))])
    x += 1


#read file, remove whitespace, put into a 9x9 array
sudoku = open(sys.argv[1], 'r')
sudoku = sudoku.read().replace('\n', '').replace(' ', '')
clauses = []

at_least_one_num_per_entry()
distinct_row_and_col()
distinct_sub_grid()
assert len(clauses) == 8829
unit_clauses()

write_to_cnf(clauses)
