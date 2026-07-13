use std::fs::{self, File};
use std::io::{BufRead, BufReader, Write};

fn main() -> std::io::Result<()> {
    // Write an entire string to a file in one call (creates or truncates)
    fs::write(
        "journal.txt",
        "day 1: learned println!\nday 2: learned ownership\n",
    )?;

    // Append through an explicit handle opened with OpenOptions
    let mut file = fs::OpenOptions::new().append(true).open("journal.txt")?;
    writeln!(file, "day 3: learned the ? operator")?;

    // Read the whole file into a String at once
    let contents = fs::read_to_string("journal.txt")?;
    println!("--- journal.txt ({} bytes) ---", contents.len());

    // Read line by line with a buffered reader - each line is a Result
    let reader = BufReader::new(File::open("journal.txt")?);
    for (i, line) in reader.lines().enumerate() {
        println!("{}: {}", i + 1, line?);
    }

    // Handle a missing file gracefully instead of propagating with ?
    match fs::read_to_string("missing.txt") {
        Ok(_) => println!("missing.txt exists after all"),
        Err(e) => println!("could not read missing.txt: {}", e),
    }

    fs::remove_file("journal.txt")?;
    Ok(())
}
