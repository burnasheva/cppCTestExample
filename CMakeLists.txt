project(CTestExample)
cmake_minimum_required(VERSION 2.6)

enable_testing()

include_directories(include)

set(CMAKE_C_FLAGS   ${CMAKE_C_FLAGS} "-g -O0 -fprofile-arcs -ftest-coverage")
set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-g -O0 -fprofile-arcs -ftest-coverage")

add_subdirectory(3rdparty)
add_subdirectory(mylib)
add_subdirectory(mydaemon)
