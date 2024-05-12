## How to build
- `make`
- `./a.out`

I used g++ 14.1.1 on ArchLinux as of 2024-05-12 to docompile it, but it should probably work on older versions/systems as well

## Sources:

- `and` keyword: (https://en.cppreference.com/w/cpp/language/operator_alternative) 
- Function declaration: C++11 (https://en.cppreference.com/w/cpp/language/function 2) 
- module system: C++20 (https://en.cppreference.com/w/cpp/language/modules). They are not quite working yet (the standard library modules seems to not be distributed in most distributions yet ?), so I had to create a build script to compiled the required headers into modules.
- `std::println()`: C++23 (https://en.cppreference.com/w/cpp/io/println 1) 
