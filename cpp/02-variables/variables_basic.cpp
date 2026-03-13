#include <iostream>
#include <string>

int main() {
    // Integer types
    int age = 30;
    short year = 2026;
    long population = 8100000000L;
    long long bigNumber = 9223372036854775807LL;

    // Unsigned integers (non-negative only)
    unsigned int score = 42;
    unsigned long fileSize = 1048576UL;

    // Floating-point types
    float temperature = 98.6f;
    double pi = 3.141592653589793;
    long double preciseValue = 1.234567890123456789L;

    // Boolean
    bool isRunning = true;
    bool hasError = false;

    // Character
    char grade = 'A';

    // std::string (from the standard library)
    std::string name = "C++";

    std::cout << "Integer types:" << std::endl;
    std::cout << "  age        = " << age << std::endl;
    std::cout << "  year       = " << year << std::endl;
    std::cout << "  population = " << population << std::endl;
    std::cout << "  bigNumber  = " << bigNumber << std::endl;

    std::cout << "\nUnsigned types:" << std::endl;
    std::cout << "  score    = " << score << std::endl;
    std::cout << "  fileSize = " << fileSize << std::endl;

    std::cout << "\nFloating-point types:" << std::endl;
    std::cout << "  temperature  = " << temperature << std::endl;
    std::cout << "  pi           = " << pi << std::endl;
    std::cout << "  preciseValue = " << preciseValue << std::endl;

    std::cout << "\nBoolean:" << std::endl;
    std::cout << "  isRunning = " << std::boolalpha << isRunning << std::endl;
    std::cout << "  hasError  = " << hasError << std::endl;

    std::cout << "\nCharacter and string:" << std::endl;
    std::cout << "  grade = " << grade << std::endl;
    std::cout << "  name  = " << name << std::endl;

    return 0;
}
