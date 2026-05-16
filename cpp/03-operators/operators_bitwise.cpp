#include <iostream>
#include <bitset>

int main() {
    unsigned int a = 0b1100;  // 12
    unsigned int b = 0b1010;  // 10

    std::cout << "a       = " << std::bitset<4>(a) << " (" << a << ")\n";
    std::cout << "b       = " << std::bitset<4>(b) << " (" << b << ")\n";
    std::cout << "a & b   = " << std::bitset<4>(a & b) << " (" << (a & b) << ")\n";
    std::cout << "a | b   = " << std::bitset<4>(a | b) << " (" << (a | b) << ")\n";
    std::cout << "a ^ b   = " << std::bitset<4>(a ^ b) << " (" << (a ^ b) << ")\n";
    std::cout << "a << 2  = " << (a << 2) << "  (multiply by 4)\n";
    std::cout << "a >> 1  = " << (a >> 1) << "  (divide by 2)\n";

    // Precedence: * binds tighter than +, and + binds tighter than <
    int result = 2 + 3 * 4;        // 14, not 20
    bool check = 2 + 3 < 6;        // (2+3) < 6  ->  true
    std::cout << "2 + 3 * 4 = " << result << '\n';
    std::cout << "2 + 3 < 6 = " << check  << '\n';

    // Ternary conditional operator: condition ? then : else
    int n = 7;
    const char* parity = (n % 2 == 0) ? "even" : "odd";
    std::cout << n << " is " << parity << '\n';

    return 0;
}
