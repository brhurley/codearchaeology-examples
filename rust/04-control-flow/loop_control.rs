fn main() {
    let nums = [10, 20, 30, 40];

    // continue skips the matching element
    for value in nums {
        if value == 20 {
            continue;
        }
        println!("for item: {}", value);
    }

    // labeled loops: break the OUTER loop from inside the inner one
    'outer: for x in 1..=3 {
        for y in 1..=3 {
            if x * y >= 4 {
                println!("stopping at x={}, y={}", x, y);
                break 'outer;
            }
        }
    }
}
