const std = @import("std");

fn factorial(n: u64) u64 {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}

fn fibonacci(n: u32) u32 {
    if (n < 2) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

pub fn main() void {
    std.debug.print("factorial(5) = {d}\n", .{factorial(5)});
    std.debug.print("factorial(10) = {d}\n", .{factorial(10)});
    std.debug.print("fibonacci(10) = {d}\n", .{fibonacci(10)});
}
