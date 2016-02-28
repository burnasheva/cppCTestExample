project(MyTests)

include(${CMAKE_SOURCE_DIR}/cmake/UnitTests.cmake)

set(CMAKE_C_FLAGS   ${CMAKE_C_FLAGS} "-g -O0 -fprofile-arcs -ftest-coverage")
set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-g -O0 -fprofile-arcs -ftest-coverage")

add_boost_test(btest01 boostTest01.cpp)
target_link_libraries(btest01 MyMath)

add_gmock_test(gtest01 gtest01.cpp)
target_link_libraries(gtest01 MyMath)
