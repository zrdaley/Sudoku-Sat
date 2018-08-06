# Sudoku As Sat

## Contents of submission
- sud2sat.py: converts a 9X9 sudoku file to CNF DIMACS format
    - how to run: `$ ./sud2sat <src> <dest>`
    - `<src>`: a single text file containing 81 characters (0-9, ., ∗ or ?)
    - `<dest>`: a text file in CNF DIMACS format
    
- sat2sud.py: converts a CNF DIMACS format file to a sudoku, writes to stdout
    - how to run: `$./sat2sud <src>`
    - input: `<src>`: a single text file containing minisat output
    - output: to the console, and can be piped into a text file
   
- sud2sat2.py: Operated the same as sud2sat.py, except with added support for multiple encodings

- Makefile
    - how to run:
        - `$ make target`: this will install python and create the executables
        - `$ make clean`: this will delete the executables
        - `$ make puzzles-sat`: this runs `sud2sat` on [this list of puzzles](projecteuler.net/project/resources/p096_sudoku.txt). The output files will be located in `./sud2sat_puzzle_output`.
        - `$ make puzzles-minisat`: this will run minisat on all of the files in `./sud2sat_puzzle_output`. The output files will be located in `./minisat_puzzle_output`. Additionally a log file (`minisat_puzzle_logs.txt`) consisting of the CPU time to solve each puzzle will be created.
        - `$ make puzzles-sat2sud`: this will run `sat2sud` on all of the files in `./minisat_puzzle_output` and output them into a file called puzzles.txt
        - `$ make puzzles-sat-hi`: this will run `sat2sudHI` on all the puzzles from [here](http://magictour.free.fr/top95). The output files will be located in `./sud2sat_hi_puzzle_output`.
        - `$ make puzzles-minisat-hi`: this will run minisat on all of the files in `./sud2sat_hi_puzzle_output`. The output files will be located in `./minisat_hi_puzzle_output`. Additionally a log file (`minisat_hi_puzzle_logs.txt`) consisting of the CPU time to solve each puzzle will be created.

## Creating the Executable

In order to run the python files using just the filename (without the extension), a symbolic link is created between the `*.py` file and the target executable.
