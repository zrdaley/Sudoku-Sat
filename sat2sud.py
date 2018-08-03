#!/usr/bin/env python
import sys
import math


def to_base_9(num):
    num_converted = [0, 0, 0]
    num_converted[0] = int(math.floor(num / 81))
    num %= 81
    if num == 0:
        num = 81
        num_converted[0] -= 1
    
    num_converted[1] = int(math.floor(num / 9))
    num %= 9
    if num == 0:
        num = 9
        num_converted[1] -= 1

    num_converted[2] = int(math.floor(num))
    return num_converted


def print_board(board):
    for row in board:
        for val in row:
            print val,
        print


def update_board(board, num):
    num = to_base_9(num)
    board[num[1]][num[0]] = num[2]


#read in sat file
sat = open(sys.argv[1], 'r')
sudoku = [[0 for x in range(9)] for y in range(9)]

sat_lines = sat.read().splitlines()
i = -1
last_line = sat_lines[i]
values = last_line.split()

count = 0
for cur_val in values:
    if int(cur_val) > 0:
        update_board(sudoku, int(cur_val))

print_board(sudoku)


