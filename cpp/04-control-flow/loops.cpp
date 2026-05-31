#include <iostream>
#include <string>
#include <vector>

int main() {
    // Classic for loop: init; condition; update
    std::cout << "Counting up: ";
    for (int i = 1; i <= 5; ++i) {
        std::cout << i << " ";
    }
    std::cout << std::endl;

    // While loop: checks the condition before each pass
    int countdown = 3;
    while (countdown > 0) {
        std::cout << "T-minus " << countdown << std::endl;
        --countdown;
    }

    // Do-while loop: body runs once before the condition is tested
    int n = 0;
    do {
        std::cout << "Runs once even though n == " << n << std::endl;
    } while (n > 0);

    // Range-based for loop (C++11): iterate a container directly
    std::vector<std::string> langs = {"C++", "Rust", "Go"};
    for (const auto& lang : langs) {
        std::cout << "Language: " << lang << std::endl;
    }

    return 0;
}
