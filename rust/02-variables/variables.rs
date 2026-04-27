fn main() {
    // Immutable binding — the default in Rust
    let x = 5;
    let y: f64 = 3.14;
    let is_active: bool = true;
    let letter: char = 'R';

    println!("Integer: {}", x);
    println!("Float: {}", y);
    println!("Boolean: {}", is_active);
    println!("Char: {}", letter);

    // Mutable binding — requires explicit 'mut'
    let mut count = 0;
    count += 1;
    count += 1;
    println!("Count: {}", count);

    // Constants require an explicit type and are always immutable.
    // Underscores in numeric literals improve readability.
    const MAX_POINTS: u32 = 100_000;
    println!("Max points: {}", MAX_POINTS);

    // Rust provides size-specific integer types.
    // Signed:   i8, i16, i32, i64, i128, isize
    // Unsigned: u8, u16, u32, u64, u128, usize
    let small: i8 = 127;
    let big: i64 = 9_223_372_036_854_775_807;
    let unsigned: u32 = 4_294_967_295;
    println!("i8 max: {}", small);
    println!("i64 max: {}", big);
    println!("u32 max: {}", unsigned);
}
