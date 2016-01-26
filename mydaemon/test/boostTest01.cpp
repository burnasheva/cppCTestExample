#define BOOST_TEST_MAIN
#define BOOST_TEST_DYN_LINK
#include <boost/test/unit_test.hpp>

#include "mymath.h"

using namespace MyMath;

BOOST_AUTO_TEST_SUITE( MyMathTest )

BOOST_AUTO_TEST_CASE( Plus )
{
    BOOST_CHECK_EQUAL(5, plus(3, 2));
}

BOOST_AUTO_TEST_CASE( Minus )
{
    BOOST_CHECK_EQUAL(1, minus(3, 2));
}

BOOST_AUTO_TEST_SUITE_END()
