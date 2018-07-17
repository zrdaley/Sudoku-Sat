OBJECTS=sud2sat

target:
		chmod +x sud2sat.py
		sudo ln -s sud2sat.py $(OBJECTS) 

clean:
		-rm $(OBJECTS)