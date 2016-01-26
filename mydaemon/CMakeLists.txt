project(mydaemon)
cmake_minimum_required(VERSION 2.6)

include_directories(include)

add_executable(${PROJECT_NAME}
  src/main.cpp
  ../mylib/mymath.cpp
)
