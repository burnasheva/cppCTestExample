project(CTestExample)
cmake_minimum_required(VERSION 2.6)

enable_testing()

include_directories(include)

add_subdirectory(3rdparty)
add_subdirectory(mylib)
add_subdirectory(mydaemon)
