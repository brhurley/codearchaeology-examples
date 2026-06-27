// Closures and higher-order functions in Rust

// A higher-order function: accepts another function via a function pointer.
fn apply_twice(f: fn(i32) -> i32, x: i32) -> i32 {
    f(f(x))
}

// A plain named function we can pass as a value.
fn double(x: i32) -> i32 {
    x * 2
}

// Returning a closure. `impl Fn` describes "some type that is callable".
// `move` transfers ownership of captured variables into the closure.
fn make_adder(n: i32) -> impl Fn(i32) -> i32 {
    move |x| x + n
}

fn main() {
    // A closure is an anonymous function that captures its environment.
    // Here it captures `factor` from the surrounding scope.
    let factor = 10;
    let scale = |x: i32| x * factor;
    println!("scale(4) = {}", scale(4));

    // Pass a named function as a value.
    println!("apply_twice(double, 5) = {}", apply_twice(double, 5));

    // A non-capturing closure coerces to a function pointer.
    println!("apply_twice(|x| x + 1, 5) = {}", apply_twice(|x| x + 1, 5));

    // A returned closure that remembers the value it captured.
    let add_five = make_adder(5);
    println!("add_five(10) = {}", add_five(10));
}
