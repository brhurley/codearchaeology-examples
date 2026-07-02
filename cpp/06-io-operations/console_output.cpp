#include <iostream>
#include <iomanip>

int main() {
    // Standard output goes to stdout; errors go to stderr
    std::cout << "Standard output (stdout)" << std::endl;
    std::cerr << "Error output (stderr)" << std::endl;

    // Streaming different types with the << operator
    int count = 42;
    double price = 19.99;
    char grade = 'A';
    bool active = true;

    std::cout << "Count: " << count << "\n";
    std::cout << "Price: " << price << "\n";
    std::cout << "Grade: " << grade << "\n";
    std::cout << "Active: " << std::boolalpha << active << "\n";

    // Fixed-point formatting with a set number of decimals
    double pi = 3.14159265;
    std::cout << std::fixed << std::setprecision(2);
    std::cout << "Pi rounded: " << pi << "\n";

    // Field width and alignment for tabular output
    std::cout << std::setw(10) << std::right << "Right" << "|\n";
    std::cout << std::setw(10) << std::left << "Left" << "|\n";

    return 0;
}
