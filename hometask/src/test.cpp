#include <iostream>
#include <gtest/gtest.h>
#include "prime.cpp"
TEST(Hello,test1)
{
    std::vector<int> result=primeFactorize(125);
    std::vector<int> expected={5,5,5};
    EXPECT_EQ(result,expected);
}
TEST(Hello,test2)
{
        std::vector<int> result=primeFactorize(60);
        std::vector<int> expected={2,2,3,5};
        EXPECT_EQ(result,expected);
}
TEST(Hello,test3)
{
    std::vector<int> result=primeFactorize(29);
    std::vector<int> expected={29};
    EXPECT_EQ(result,expected);
}
TEST(Hello,test4)
{
    std::vector<int> result=primeFactorize(64);
    std::vector<int> expected={2,2,2,2,2,2,2,2};
    EXPECT_EQ(result,expected);
}