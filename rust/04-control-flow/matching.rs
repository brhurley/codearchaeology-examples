fn main() {
    let number = 7;

    // match returns a value; arms can use ranges and a wildcard
    let category = match number {
        0 => "zero",
        1..=5 => "low",
        6..=9 => "high",
        _ => "out of range",
    };
    println!("{} is in category: {}", number, category);

    // match on a boolean-like signal
    let signal = "yellow";
    match signal {
        "red" => println!("Stop"),
        "yellow" => println!("Slow down"),
        "green" => println!("Go"),
        other => println!("Unknown signal: {}", other),
    }
}
