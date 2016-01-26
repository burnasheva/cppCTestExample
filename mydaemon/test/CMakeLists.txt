project(MyTests)

include(${CMAKE_SOURCE_DIR}/3rdparty/gmock/CMakeLibs.txt)

set(BOOSTTEST_BIN_NAME utest01)
add_executable(${BOOSTTEST_BIN_NAME} boostTest01.cpp)
target_link_libraries(${BOOSTTEST_BIN_NAME} boost_unit_test_framework pthread MyMath)
add_test(boost_unit_test ${CMAKE_CURRENT_BINARY_DIR}/${BOOSTTEST_BIN_NAME})

set(GTEST_BIN_NAME utest02)
add_executable(${GTEST_BIN_NAME} gtest01.cpp)
target_link_libraries(${GTEST_BIN_NAME} gtest gtest_main pthread MyMath)
add_test(google_unit_test ${CMAKE_CURRENT_BINARY_DIR}/${GTEST_BIN_NAME} --gtest_output=xml:gtestReport.xml)
