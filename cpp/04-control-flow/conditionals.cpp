#include <iostream>
#include <string>

int main() {
    int score = 85;

    // if / else if / else chain
    if (score >= 90) {
        std::cout << "Grade: A" << std::endl;
    } else if (score >= 80) {
        std::cout << "Grade: B" << std::endl;
    } else if (score >= 70) {
        std::cout << "Grade: C" << std::endl;
    } else {
        std::cout << "Grade: F" << std::endl;
    }

    // Ternary conditional operator: condition ? value_if_true : value_if_false
    int number = 7;
    std::string parity = (number % 2 == 0) ? "even" : "odd";
    std::cout << number << " is " << parity << std::endl;

    // Logical operators combine conditions
    int age = 25;
    bool hasLicense = true;
    if (age >= 18 && hasLicense) {
        std::cout << "Allowed to drive" << std::endl;
    }

    // if with initializer (C++17): remainder only exists inside this if
    if (int remainder = score % 10; remainder == 5) {
        std::cout << "Score ends in 5 (remainder " << remainder << ")" << std::endl;
    }

    return 0;
}
