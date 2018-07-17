# Sudoku As Sat

## Contents of submission
- sud2sat.py: converts a 9X9 sudoku file to CNF DIMACS format
    - how to run: `$ ./sud2sat <src> <dest>`
    - `<src>`: a text single file containing 81 characters (0-9, ., ∗ or ?)
    - `<dest>`: a text file in CNF DIMACS format
    
- sat2sud.py: converts a CNF DIMACS format file to a sudoku file
    - how to run: `$./sat2sud <src> <dest>`
    - input: TBD
    - output: TBD

- Makefile
    - how to run:
        - `$ make target`: this will install python and create the executables
        - `$ make clean`: this will delete the executables

## Creating the Executable

In order to run the python files using just the filename (without the extension), a symbolic link is created between the `*.py` file and the target executable.
