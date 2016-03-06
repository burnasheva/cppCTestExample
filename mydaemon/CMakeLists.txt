project(MyDaemon)
cmake_minimum_required(VERSION 2.6)

set(BIN_NAME MyDaemon)

include_directories(include)

add_executable(${BIN_NAME} src/main.cpp)
target_link_libraries(${BIN_NAME} MyMath)
