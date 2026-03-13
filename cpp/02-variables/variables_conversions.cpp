#include <iostream>
#include <string>

int main() {
    // --- Implicit (widening) conversions --- safe, no data loss
    int i = 42;
    long l = i;          // int → long (widening)
    double d = i;        // int → double (widening)
    float f = 3.14f;
    double d2 = f;       // float → double (widening)

    std::cout << "Implicit widening conversions:" << std::endl;
    std::cout << "  int " << i << " -> long  " << l << std::endl;
    std::cout << "  int " << i << " -> double " << d << std::endl;
    std::cout << "  float " << f << " -> double " << d2 << std::endl;

    // --- Explicit (narrowing) conversions with static_cast ---
    double pi = 3.14159;
    int truncated = static_cast<int>(pi);       // truncates, not rounds
    float narrowed = static_cast<float>(pi);    // reduced precision

    std::cout << "\nExplicit narrowing with static_cast:" << std::endl;
    std::cout << "  double " << pi << " -> int    " << truncated << " (truncated)" << std::endl;
    std::cout << "  double " << pi << " -> float  " << narrowed  << " (reduced precision)" << std::endl;

    // --- char and int conversions ---
    char ch = 'A';
    int ascii = static_cast<int>(ch);
    char back = static_cast<char>(66);

    std::cout << "\nChar <-> int conversions:" << std::endl;
    std::cout << "  char '" << ch << "' -> int " << ascii << std::endl;
    std::cout << "  int 66 -> char '" << back << "'" << std::endl;

    // --- int and bool conversions ---
    int zero = 0;
    int nonzero = 7;
    bool fromZero = static_cast<bool>(zero);
    bool fromNonzero = static_cast<bool>(nonzero);
    int fromTrue = static_cast<int>(true);
    int fromFalse = static_cast<int>(false);

    std::cout << "\nint <-> bool conversions:" << std::endl;
    std::cout << "  int 0 -> bool  " << std::boolalpha << fromZero    << std::endl;
    std::cout << "  int 7 -> bool  " << fromNonzero << std::endl;
    std::cout << "  true  -> int   " << std::noboolalpha << fromTrue   << std::endl;
    std::cout << "  false -> int   " << fromFalse << std::endl;

    // --- String conversions (requires standard library) ---
    int num = 42;
    std::string numStr = std::to_string(num);
    double parsed = std::stod("3.14");
    int parsed_i = std::stoi("100");

    std::cout << "\nString conversions:" << std::endl;
    std::cout << "  int 42 -> string \"" << numStr << "\"" << std::endl;
    std::cout << "  string \"3.14\" -> double " << parsed << std::endl;
    std::cout << "  string \"100\" -> int " << parsed_i << std::endl;

    return 0;
}
