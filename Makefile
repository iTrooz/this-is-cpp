all:
	# Compile std modules (they are probably not available in your filesystem by default)
	g++ -c -fmodules-ts -x c++-system-header -std=c++23 iostream print
	# Compile program
	g++ -fmodules-ts -std=c++23 main.cpp

clean:
	rm -rf a.out gcm.cache
