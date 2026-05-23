package main

import "core:fmt"

main :: proc() {
    a := 17
    b := 5

    fmt.println("=== Arithmetic ===")
    fmt.printf("%d + %d = %d\n", a, b, a + b)
    fmt.printf("%d - %d = %d\n", a, b, a - b)
    fmt.printf("%d * %d = %d\n", a, b, a * b)
    fmt.printf("%d / %d = %d\n", a, b, a / b)
    fmt.printf("%d %% %d = %d\n", a, b, a % b)

    // Float division returns a float result
    x := 17.0
    y := 5.0
    fmt.printf("%.1f / %.1f = %.2f\n", x, y, x / y)

    // Unary minus
    n := 42
    fmt.printf("-n = %d\n", -n)

    fmt.println("\n=== Comparison ===")
    fmt.printf("%d == %d: %v\n", a, b, a == b)
    fmt.printf("%d != %d: %v\n", a, b, a != b)
    fmt.printf("%d <  %d: %v\n", a, b, a < b)
    fmt.printf("%d >  %d: %v\n", a, b, a > b)
    fmt.printf("%d <= %d: %v\n", a, b, a <= b)
    fmt.printf("%d >= %d: %v\n", a, b, a >= b)

    fmt.println("\n=== Logical ===")
    t := true
    f := false
    fmt.printf("true && false = %v\n", t && f)
    fmt.printf("true || false = %v\n", t || f)
    fmt.printf("!true         = %v\n", !t)

    // Short-circuit evaluation: the second operand is only evaluated
    // if the result is not already determined by the first.
    fmt.printf("short-circuit: %v\n", f && (10 / 0 == 0))

    fmt.println("\n=== Bitwise (p=12, q=10) ===")
    p: u8 = 0b1100
    q: u8 = 0b1010
    fmt.printf("p & q  = %b\n", p & q)
    fmt.printf("p | q  = %b\n", p | q)
    fmt.printf("p ~ q  = %b\n", p ~ q)
    fmt.printf("~p     = %b\n", ~p)
    fmt.printf("p &~ q = %b\n", p &~ q)
    fmt.printf("p << 1 = %b\n", p << 1)
    fmt.printf("p >> 1 = %b\n", p >> 1)

    fmt.println("\n=== Compound Assignment ===")
    m := 10
    fmt.printf("start:      %d\n", m)
    m += 5
    fmt.printf("after += 5: %d\n", m)
    m -= 3
    fmt.printf("after -= 3: %d\n", m)
    m *= 2
    fmt.printf("after *= 2: %d\n", m)
    m /= 4
    fmt.printf("after /= 4: %d\n", m)

    fmt.println("\n=== Precedence ===")
    fmt.printf("2 + 3 * 4   = %d\n", 2 + 3 * 4)
    fmt.printf("(2 + 3) * 4 = %d\n", (2 + 3) * 4)
}
