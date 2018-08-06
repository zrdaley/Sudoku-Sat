OBJECTS=sud2sat sat2sud

target:
		chmod +x sud2sat.py
		sudo apt install python
		sudo ln -s sud2sat.py sud2sat
		chmod +x sat2sud.py
		sudo ln -s sat2sud.py sat2sud
		chmod +x sud2satHI.py
		sudo ln -s sud2satHI.py sud2satHI
		
clean:
		-rm $(OBJECTS)

puzzles-sat:
		./run_puzzles.sh

puzzles-sat-hi:
	./run_hi_puzzles.sh

puzzles-minisat:
		./run_minisat.sh

puzzles-sud:
		./run_sat2sud.sh