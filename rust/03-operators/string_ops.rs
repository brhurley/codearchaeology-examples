fn main() {
    // `+` moves the left String and appends a &str
    let greeting = String::from("Hello");
    let name = "Rust";
    let message = greeting + ", " + name + "!";
    println!("{}", message);

    // format! borrows its arguments, so they stay usable
    let first = String::from("Code");
    let second = String::from("Archaeology");
    let combined = format!("{}{}", first, second);
    println!("{}", combined);
    println!("Still usable: {} and {}", first, second);

    // repeat() builds a String by repetition
    let line = "=".repeat(10);
    println!("{}", line);
}
