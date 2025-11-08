CXX=g++
CXXFLAGS = -fmodules -std=c++23

main: math.o main.cpp
	# Compile std modules (they are probably not available in your filesystem by default)
	$(CXX) $(CXXFLAGS) -c -x c++-system-header iostream print
	# Compile program
	$(CXX) $(CXXFLAGS) main.cpp math.o -o main

math.o: math.cppm
	$(CXX) $(CXXFLAGS) -c math.cppm -o math.o

clean:
	rm -rf gcm.cache *.o main
