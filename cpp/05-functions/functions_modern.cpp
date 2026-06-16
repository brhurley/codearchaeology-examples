#include <iostream>
#include <vector>
#include <functional>
#include <algorithm>

// Higher-order function: accepts another function as a parameter
int applyTwice(const std::function<int(int)>& f, int value) {
    return f(f(value));
}

int main() {
    // A lambda stored in a variable
    auto square = [](int x) { return x * x; };
    std::cout << "square(6) = " << square(6) << std::endl;

    // A lambda that captures a local variable by value
    int factor = 3;
    auto scale = [factor](int x) { return x * factor; };
    std::cout << "scale(10) = " << scale(10) << std::endl;

    // Passing a lambda into a higher-order function
    std::cout << "applyTwice(square, 2) = " << applyTwice(square, 2) << std::endl;

    // Using a lambda with a standard library algorithm
    std::vector<int> nums = {5, 2, 8, 1, 9, 3};
    std::sort(nums.begin(), nums.end(), [](int a, int b) { return a > b; });
    std::cout << "Sorted descending:";
    for (int n : nums) {
        std::cout << " " << n;
    }
    std::cout << std::endl;
    return 0;
}
