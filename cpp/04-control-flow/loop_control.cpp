#include <iostream>

int main() {
    // break: stop the loop as soon as a condition is met
    std::cout << "Searching for 4:" << std::endl;
    for (int i = 1; i <= 10; ++i) {
        if (i == 4) {
            std::cout << "Found " << i << ", stopping" << std::endl;
            break;
        }
        std::cout << "Checking " << i << std::endl;
    }

    // continue: skip even numbers, keep going with odd ones
    std::cout << "Odd numbers from 1 to 7: ";
    for (int i = 1; i <= 7; ++i) {
        if (i % 2 == 0) {
            continue;
        }
        std::cout << i << " ";
    }
    std::cout << std::endl;

    return 0;
}
