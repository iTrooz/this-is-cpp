CXX=g++
CXXFLAGS = -fmodules -std=c++23

main: gcm.cache/std.gcm math.o main.cpp
	$(CXX) $(CXXFLAGS) main.cpp math.o -o main

math.o: math.cppm
	$(CXX) $(CXXFLAGS) -c math.cppm -o math.o

gcm.cache/std.gcm:
	$(CXX) $(CXXFLAGS) -fsearch-include-path bits/std.cc -c

clean:
	rm -rf gcm.cache *.o main
