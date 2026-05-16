#include <iostream>

int main() {
    int a = 17;
    int b = 5;

    std::cout << "a + b  = " << (a + b) << '\n';
    std::cout << "a - b  = " << (a - b) << '\n';
    std::cout << "a * b  = " << (a * b) << '\n';
    std::cout << "a / b  = " << (a / b) << "  (integer division)\n";
    std::cout << "a % b  = " << (a % b) << '\n';

    double x = 17.0;
    double y = 5.0;
    std::cout << "x / y  = " << (x / y) << "  (floating-point)\n";

    int counter = 10;
    counter += 5;   // 15
    counter -= 2;   // 13
    counter *= 2;   // 26
    counter /= 4;   // 6
    std::cout << "counter after compound ops = " << counter << '\n';

    int n = 7;
    std::cout << "n++ evaluates to " << n++ << ", then n = " << n << '\n';
    std::cout << "++n evaluates to " << ++n << ", then n = " << n << '\n';

    return 0;
}
