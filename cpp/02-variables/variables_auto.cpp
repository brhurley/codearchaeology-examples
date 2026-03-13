#include <iostream>
#include <string>
#include <typeinfo>

int main() {
    // auto deduces the type at compile time
    auto count = 10;           // int
    auto ratio = 3.14;         // double
    auto flag = true;          // bool
    auto letter = 'Z';         // char
    auto message = std::string("Hello, auto!"); // std::string

    // Suffix literals influence deduced type
    auto floatVal = 2.5f;      // float (not double)
    auto longVal = 100L;       // long (not int)
    auto unsignedVal = 50U;    // unsigned int

    std::cout << "auto-deduced types:" << std::endl;
    std::cout << "  count       = " << count        << " (type: " << typeid(count).name()       << ")" << std::endl;
    std::cout << "  ratio       = " << ratio        << " (type: " << typeid(ratio).name()       << ")" << std::endl;
    std::cout << "  flag        = " << std::boolalpha << flag << " (type: " << typeid(flag).name() << ")" << std::endl;
    std::cout << "  letter      = " << letter       << " (type: " << typeid(letter).name()      << ")" << std::endl;
    std::cout << "  message     = " << message      << " (type: " << typeid(message).name()     << ")" << std::endl;
    std::cout << "  floatVal    = " << floatVal     << " (type: " << typeid(floatVal).name()    << ")" << std::endl;
    std::cout << "  longVal     = " << longVal      << " (type: " << typeid(longVal).name()     << ")" << std::endl;
    std::cout << "  unsignedVal = " << unsignedVal  << " (type: " << typeid(unsignedVal).name() << ")" << std::endl;

    return 0;
}
