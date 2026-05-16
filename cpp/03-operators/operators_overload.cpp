#include <iostream>

struct Vec2 {
    double x, y;

    Vec2 operator+(const Vec2& other) const {
        return Vec2{x + other.x, y + other.y};
    }

    bool operator==(const Vec2& other) const {
        return x == other.x && y == other.y;
    }
};

std::ostream& operator<<(std::ostream& os, const Vec2& v) {
    return os << '(' << v.x << ", " << v.y << ')';
}

int main() {
    Vec2 a{1.0, 2.0};
    Vec2 b{3.0, 4.0};
    Vec2 c = a + b;

    std::cout << "a     = " << a << '\n';
    std::cout << "b     = " << b << '\n';
    std::cout << "a + b = " << c << '\n';
    std::cout << "a == b? " << (a == b) << '\n';
    std::cout << "c == Vec2{4,6}? " << (c == Vec2{4.0, 6.0}) << '\n';

    return 0;
}
