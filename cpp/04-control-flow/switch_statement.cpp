#include <iostream>

int main() {
    int day = 3;

    switch (day) {
        case 1:
            std::cout << "Monday" << std::endl;
            break;
        case 2:
            std::cout << "Tuesday" << std::endl;
            break;
        case 3:
            std::cout << "Wednesday" << std::endl;
            break;
        case 4:
            std::cout << "Thursday" << std::endl;
            break;
        case 5:
            std::cout << "Friday" << std::endl;
            break;
        default:
            std::cout << "Weekend" << std::endl;
            break;
    }

    // Intentional fall-through groups cases that share an action
    char grade = 'B';
    switch (grade) {
        case 'A':
        case 'B':
        case 'C':
            std::cout << "Passing grade" << std::endl;
            break;
        case 'D':
        case 'F':
            std::cout << "Failing grade" << std::endl;
            break;
    }

    return 0;
}
