use std::io::{self, Write};

fn main() {
    // print! omits the newline; println! adds one
    print!("Loading");
    print!("...");
    println!("done");

    // Positional arguments can be reused; named arguments read clearly
    println!("{0} and {1}; {1} and {0}", "input", "output");
    println!("{name} first appeared in {year}", name = "Rust", year = 2010);

    // Precision, width/alignment, and alternate bases
    let pi = 3.14159265;
    println!("pi to 2 places: {:.2}", pi);
    println!("padded: {:>8}", 42);
    println!("hex: {:x}, binary: {:b}", 255, 5);

    // {:?} uses the Debug trait - works on tuples, vectors, structs
    let point = (3, 7);
    println!("debug: {:?}", point);

    // eprintln! goes to stderr, keeping it separate from piped stdout
    eprintln!("this goes to standard error");

    // stdout is line-buffered: flush manually if print! must appear now
    io::stdout().flush().expect("failed to flush stdout");
}
