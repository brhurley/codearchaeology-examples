#include <iostream>

// Default parameter: exp defaults to 2 when omitted
int power(int base, int exp = 2) {
    int result = 1;
    for (int i = 0; i < exp; ++i) {
        result *= base;
    }
    return result;
}

// Pass by reference: modifies the caller's variable directly
void doubleValue(int& n) {
    n *= 2;
}

// Function overloading: same name, different parameter types
int multiply(int a, int b) {
    return a * b;
}

double multiply(double a, double b) {
    return a * b;
}

int main() {
    std::cout << "power(5) = " << power(5) << std::endl;        // uses default exp = 2
    std::cout << "power(2, 10) = " << power(2, 10) << std::endl;

    int x = 21;
    doubleValue(x);
    std::cout << "x after doubleValue = " << x << std::endl;

    std::cout << "multiply(3, 4) = " << multiply(3, 4) << std::endl;
    std::cout << "multiply(1.5, 2.0) = " << multiply(1.5, 2.0) << std::endl;
    return 0;
}
