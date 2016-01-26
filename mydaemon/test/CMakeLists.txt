project(MyTests)

set(tests_bin utest)

add_executable(${tests_bin} boostTest01.cpp)
target_link_libraries(${tests_bin} boost_unit_test_framework pthread MyMath)

# add_test(boost_unit_test ${CMAKE_BINARY_DIR}/test/${tests_bin})
add_test(boost_unit_test ${CMAKE_CURRENT_BINARY_DIR}/${tests_bin})
