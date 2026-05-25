fn main() {
    // --- Arithmetic operators ---
    let a = 17;
    let b = 5;
    println!("Arithmetic:");
    println!("  {} + {} = {}", a, b, a + b);
    println!("  {} - {} = {}", a, b, a - b);
    println!("  {} * {} = {}", a, b, a * b);
    println!("  {} / {} = {}", a, b, a / b); // integer division truncates
    println!("  {} % {} = {}", a, b, a % b); // remainder

    // Floating-point division keeps the fraction
    let x = 17.0;
    let y = 5.0;
    println!("  {} / {} = {}", x, y, x / y);

    // --- Comparison operators (always produce a bool) ---
    println!("Comparison:");
    println!("  {} == {} -> {}", a, b, a == b);
    println!("  {} != {} -> {}", a, b, a != b);
    println!("  {} <  {} -> {}", a, b, a < b);
    println!("  {} >= {} -> {}", a, b, a >= b);

    // --- Logical operators (short-circuiting) ---
    let sunny = true;
    let warm = false;
    println!("Logical:");
    println!("  sunny && warm -> {}", sunny && warm);
    println!("  sunny || warm -> {}", sunny || warm);
    println!("  !sunny        -> {}", !sunny);

    // --- Compound assignment (requires `mut`) ---
    let mut total = 10;
    total += 5;
    total -= 3;
    total *= 2;
    println!("Compound assignment: total = {}", total);

    // --- Bitwise operators ---
    let flags = 0b1100;
    let mask = 0b1010;
    println!("Bitwise:");
    println!("  {:04b} & {:04b} = {:04b}", flags, mask, flags & mask);
    println!("  {:04b} | {:04b} = {:04b}", flags, mask, flags | mask);
    println!("  {:04b} ^ {:04b} = {:04b}", flags, mask, flags ^ mask);
    println!("  1 << 4 = {}", 1 << 4);

    // --- Operator precedence: * and / bind tighter than + and - ---
    println!("Precedence:");
    println!("  2 + 3 * 4   = {}", 2 + 3 * 4);
    println!("  (2 + 3) * 4 = {}", (2 + 3) * 4);

    // --- Range operator (..= is inclusive) ---
    let sum: i32 = (1..=5).sum();
    println!("Range: sum of 1..=5 = {}", sum);
}
