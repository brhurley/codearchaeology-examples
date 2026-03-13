#include <iostream>
#include <string>

// constexpr at namespace scope — computed at compile time
constexpr double PI = 3.14159265358979323846;
constexpr double GRAVITY = 9.80665;
constexpr int MAX_PLAYERS = 4;
constexpr double CIRCLE_AREA(double r) { return PI * r * r; }

int main() {
    // const — cannot be modified after initialization
    const int birthYear = 1985;
    const std::string language = "C++";

    // constexpr — value known at compile time
    constexpr int BUFFER_SIZE = 1024;
    constexpr double SPEED_OF_LIGHT = 299792458.0; // m/s

    // constexpr computed at compile time
    constexpr double area = CIRCLE_AREA(5.0);

    std::cout << "const values:" << std::endl;
    std::cout << "  birthYear = " << birthYear << std::endl;
    std::cout << "  language  = " << language << std::endl;

    std::cout << "\nconstexpr values:" << std::endl;
    std::cout << "  BUFFER_SIZE    = " << BUFFER_SIZE << std::endl;
    std::cout << "  SPEED_OF_LIGHT = " << SPEED_OF_LIGHT << " m/s" << std::endl;
    std::cout << "  GRAVITY        = " << GRAVITY << " m/s^2" << std::endl;
    std::cout << "  MAX_PLAYERS    = " << MAX_PLAYERS << std::endl;
    std::cout << "  Circle area (r=5) = " << area << std::endl;

    // Attempting to modify a const causes a compile error:
    // birthYear = 1990;  // error: assignment of read-only variable

    return 0;
}
