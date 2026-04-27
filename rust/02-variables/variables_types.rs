fn main() {
    // &str: a string slice (borrowed reference, stored in the binary)
    // String: heap-allocated, owned string
    let greeting: &str = "Hello, Rust!";
    let owned: String = String::from("I own this string");
    println!("{}", greeting);
    println!("{}", owned);

    // Shadowing: rebind a name with a new value — or a completely new type.
    // This is different from mutation: each 'let' creates a new binding.
    let spaces = "   ";
    let spaces = spaces.len();  // 'spaces' is now a usize, not a &str
    println!("Spaces: {}", spaces);

    // Type casting uses the 'as' keyword. Rust never coerces silently.
    let integer: i32 = 42;
    let as_float: f64 = integer as f64;
    let truncated: i32 = 3.99_f64 as i32;  // truncates toward zero, does not round
    println!("i32 as f64: {}", as_float);
    println!("3.99 as i32: {}", truncated);

    // Tuples group values of different types. Access elements with .0, .1, etc.
    let point: (f64, f64) = (1.5, 2.7);
    let rgb: (u8, u8, u8) = (255, 128, 0);
    println!("Point: ({}, {})", point.0, point.1);
    println!("RGB: ({}, {}, {})", rgb.0, rgb.1, rgb.2);

    // Arrays hold a fixed number of values of the same type.
    // The type annotation [T; N] specifies element type and length.
    let primes: [i32; 5] = [2, 3, 5, 7, 11];
    println!("First prime: {}", primes[0]);
    println!("Array length: {}", primes.len());
}
