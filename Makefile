OBJECTS=sud2sat sat2sud sud2satHI walksat sud2sat2

target: walksat.c
	chmod +x sud2sat.py
	sudo apt install python
	sudo ln -s sud2sat.py sud2sat
	chmod +x sat2sud.py
	sudo ln -s sat2sud.py sat2sud
	chmod +x sud2satHI.py
	sudo ln -s sud2satHI.py sud2satHI
	gcc walksat.c -lm -o walksat
	chmod +x sud2sat2.py
	sudo ln -s sud2sat2.py sud2sat2

clean:
	-rm $(OBJECTS)

puzzles-sat:
	./run_puzzles.sh

puzzles-sat2:
	./run_puzzles2.sh

puzzles-sat-hi:
	./run_hi_puzzles.sh

puzzles-minisat:
	./run_minisat.sh

puzzles-minisat2:
	./run_minisat2.sh

puzzles-minisat-hi:
	./run_minisat_hi.sh

puzzles-sud:
	./run_sat2sud.sh

puzzles-walksat:
	./run_walksat.sh
