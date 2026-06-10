fn main() {
    let number = 7;

    // if / else if / else chain
    if number < 5 {
        println!("{} is less than 5", number);
    } else if number == 5 {
        println!("{} is exactly 5", number);
    } else {
        println!("{} is greater than 5", number);
    }

    // if is an EXPRESSION — it returns a value
    let parity = if number % 2 == 0 { "even" } else { "odd" };
    println!("{} is {}", number, parity);
}
