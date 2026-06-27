// Functions in Rust: definitions, parameters, returns, recursion, scope

// A function with no parameters and no return value.
// The implicit return type is the unit type `()`.
fn greet() {
    println!("Welcome to Rust functions!");
}

// Parameters need explicit types. `-> i32` declares the return type.
fn add(a: i32, b: i32) -> i32 {
    // The final expression (no semicolon) is returned implicitly.
    a + b
}

// The `return` keyword allows early exit before the end of the body.
fn absolute(n: i32) -> i32 {
    if n < 0 {
        return -n;
    }
    n
}

// Recursion: a function that calls itself. Computes n! (factorial).
fn factorial(n: u64) -> u64 {
    if n <= 1 {
        1
    } else {
        n * factorial(n - 1)
    }
}

// A constant is in scope across the whole module and must be typed.
const PLANET: &str = "Earth";

fn main() {
    greet();

    let sum = add(3, 4);
    println!("3 + 4 = {}", sum);

    println!("absolute(-5) = {}", absolute(-5));
    println!("absolute(8) = {}", absolute(8));

    println!("5! = {}", factorial(5));

    // `sum` and `local` are local to main; PLANET is in scope everywhere.
    let local = sum * 2;
    println!("local = {}, planet = {}", local, PLANET);
}
