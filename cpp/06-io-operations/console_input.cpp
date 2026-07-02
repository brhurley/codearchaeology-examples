#include <iostream>
#include <string>

int main() {
    std::string name;
    int age;

    std::cout << "Enter your name: ";
    std::getline(std::cin, name);

    std::cout << "Enter your age: ";
    std::cin >> age;

    std::cout << "Hello, " << name << "!\n";
    std::cout << "Next year you will be " << (age + 1) << ".\n";

    return 0;
}
