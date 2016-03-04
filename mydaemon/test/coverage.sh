#!/bin/bash

cmake ../cppCTestExample/
make -j3

# echo -e '\n# lcov --zerocounters --directory . ************'
lcov --zerocounters --directory .
ctest

# echo -e '\n# lcov --capture --directory . --output-file coverage.info ************'
lcov --capture --directory . --output-file coverage.info
lcov -r coverage.info /usr/include/\* -o coverage.info
lcov -r coverage.info 3rdparty/\* -o coverage.info

# echo -e '\n# genhtml coverage.info --output-directory coverage.out ************'
genhtml coverage.info --output-directory coverage.out

google-chrome /home/zhdanovskiy/src/cppCTestExample-build/coverage.out/index.html

# gcov-4.8 ../cppCTestExample/mylib/mymath.cpp --object-file ./mylib/CMakeFiles/MyMath.dir/mymath.cpp.gcno
