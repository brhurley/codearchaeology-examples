#include <iostream>

int main() {
    int age = 25;
    int score = 88;

    std::cout << "age == 25 : " << (age == 25) << '\n';
    std::cout << "age != 30 : " << (age != 30) << '\n';
    std::cout << "score >= 90: " << (score >= 90) << '\n';
    std::cout << "score < 90 : " << (score < 90) << '\n';

    bool eligible = (age >= 18) && (score >= 80);
    bool flagged  = (age < 18) || (score < 60);

    std::cout << "eligible (age>=18 && score>=80) = " << eligible << '\n';
    std::cout << "flagged  (age<18  || score<60)  = " << flagged  << '\n';
    std::cout << "!eligible = " << !eligible << '\n';

    // Short-circuit: the right side is never evaluated when the left
    // already determines the result, so divide-by-zero is avoided.
    int divisor = 0;
    if (divisor != 0 && (100 / divisor) > 1) {
        std::cout << "branch taken\n";
    } else {
        std::cout << "short-circuit prevented division by zero\n";
    }

    return 0;
}
