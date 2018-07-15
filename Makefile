OBJECTS=sud2sat

target:
		chmod +x sud2sat.py
		@if python -c "import math" &> /dev/null; then\
			echo 'skipping python install';\
		else\
			sudo apt-get install python2.7;\
		fi
		sudo ln -s sud2sat.py $(OBJECTS) 

clean:
		-rm $(OBJECTS)