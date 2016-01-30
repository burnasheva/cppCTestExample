include(${CMAKE_SOURCE_DIR}/3rdparty/gmock/CMakeLibs.txt)

function(add_gmock_test target)
    message(STATUS "add_gmock_test(${target} ${ARGN})")
    add_executable(${target} ${ARGN})
    target_link_libraries(${target} gmock_main)
    add_test(${target} ${target} --gtest_output=xml:gtestReport.xml)
endfunction()

function(add_boost_test target)
    message(STATUS "add_boost_test(${target} ${ARGN})")
    add_executable(${target}
      ${ARGN}
      ${CMAKE_SOURCE_DIR}/3rdparty/teamcity-cpp/teamcity_messages
      ${CMAKE_SOURCE_DIR}/3rdparty/teamcity-cpp/teamcity_boost
    )
    target_link_libraries(${target} boost_unit_test_framework)
    add_test(${target} ${target} --log_level=all)
endfunction()
