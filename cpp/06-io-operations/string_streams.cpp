#include <iostream>
#include <sstream>
#include <string>
#include <cstdio>

int main() {
    // Building a string with an output string stream
    std::ostringstream oss;
    int items = 3;
    double total = 47.5;
    oss << "Order: " << items << " items, $" << total;
    std::string summary = oss.str();
    std::cout << summary << "\n";

    // Parsing values out of a string with an input string stream
    std::string data = "100 3.5 hello";
    std::istringstream iss(data);
    int quantity;
    double weight;
    std::string label;
    iss >> quantity >> weight >> label;

    std::cout << "Quantity: " << quantity << "\n";
    std::cout << "Weight: " << weight << "\n";
    std::cout << "Label: " << label << "\n";

    // C-style formatted output is still available in C++
    std::printf("Formatted: %d units at %.2f each\n", quantity, weight);

    return 0;
}
