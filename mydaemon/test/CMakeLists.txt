project(MyTests)

include(${CMAKE_SOURCE_DIR}/cmake/utest.txt)

add_executable(utest01
  boostTest01.cpp
  ${CMAKE_SOURCE_DIR}/3rdparty/teamcity-cpp/teamcity_messages
  ${CMAKE_SOURCE_DIR}/3rdparty/teamcity-cpp/teamcity_boost
)
target_link_libraries(utest01 boost_unit_test_framework pthread MyMath)
add_test(boost_unit_test ${CMAKE_CURRENT_BINARY_DIR}/utest01)

add_gmock_test(utest02 gtest01.cpp)
target_link_libraries(utest02 MyMath)
