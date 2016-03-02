#!/bin/bash

cmake ../cppCTestExample/
make -j3

# ./mydaemon/MyDaemon
ctest
gcov-4.8 ../cppCTestExample/mylib/mymath.cpp --object-file ./mylib/CMakeFiles/MyMath.dir/mymath.cpp.gcno

lcov --capture --directory ./ --output-file coverage.info
genhtml coverage.info --output-directory coverage.out

google-chrome ./coverage.out/index.html
