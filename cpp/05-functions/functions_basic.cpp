#include <iostream>
#include <string>

// Function declarations (prototypes)
int add(int a, int b);
double average(double a, double b);
void greet(const std::string& name);

int main() {
    std::cout << "add(3, 4) = " << add(3, 4) << std::endl;
    std::cout << "average(10, 20) = " << average(10, 20) << std::endl;
    greet("Ada");
    return 0;
}

// Function definitions
int add(int a, int b) {
    return a + b;
}

double average(double a, double b) {
    return (a + b) / 2.0;
}

// void functions perform an action but return nothing
void greet(const std::string& name) {
    std::cout << "Hello, " << name << "!" << std::endl;
}
