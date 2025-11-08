CXX=g++
CXXFLAGS = -fmodules -std=c++23

main: math.o main.cpp
	$(CXX) $(CXXFLAGS) -fsearch-include-path bits/std.cc main.cpp math.o -o main

math.o: math.cppm
	$(CXX) $(CXXFLAGS) -c math.cppm -o math.o

clean:
	rm -rf gcm.cache *.o main
