#include "mymath.h"

#include <gtest/gtest.h>

using namespace MyMath;

TEST(MyMathTest, Plus) {
  EXPECT_EQ(5, plus(3, 2));
}

TEST(MyMathTest, Minus) {
  EXPECT_EQ(1, minus(3, 2));
}
