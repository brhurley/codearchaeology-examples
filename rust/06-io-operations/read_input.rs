use std::io;

fn main() {
    let mut name = String::new();
    println!("What is your name?");
    io::stdin()
        .read_line(&mut name)
        .expect("failed to read from stdin");
    let name = name.trim(); // read_line keeps the trailing newline

    println!("Hello, {}! Enter two numbers, one per line.", name);

    let mut sum: i64 = 0;
    for _ in 0..2 {
        let mut line = String::new();
        io::stdin()
            .read_line(&mut line)
            .expect("failed to read line");
        let n: i64 = line.trim().parse().expect("please enter a whole number");
        sum += n;
    }
    println!("Their sum is {}", sum);
}
