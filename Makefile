CXX=g++
CXXFLAGS = -fmodules -std=c++23
MOD_FILES = $(wildcard *.cppm)
OBJ_FILES = $(MOD_FILES:.cppm=.o)

main: gcm.cache/std.gcm $(OBJ_FILES) main.cpp
	$(CXX) $(CXXFLAGS) main.cpp $(OBJ_FILES) -o main

%.o: %.cppm
	$(CXX) $(CXXFLAGS) -c $< -o $@

gcm.cache/std.gcm:
	$(CXX) $(CXXFLAGS) -fsearch-include-path bits/std.cc -c -o /dev/null

clean:
	rm -rf gcm.cache *.o main
