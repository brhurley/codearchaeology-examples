fn main() {
    // 1. loop with break returning a value
    let mut counter = 0;
    let result = loop {
        counter += 1;
        if counter == 5 {
            break counter * 10; // break can carry a value out
        }
    };
    println!("loop result: {}", result);

    // 2. while loop
    let mut n = 3;
    while n > 0 {
        println!("while countdown: {}", n);
        n -= 1;
    }

    // 3. for over an inclusive range
    for i in 1..=3 {
        println!("for range: {}", i);
    }
}
