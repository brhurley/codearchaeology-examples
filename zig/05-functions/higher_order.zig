const std = @import("std");

// Accepts a function pointer and applies it twice
fn applyTwice(f: *const fn (i32) i32, x: i32) i32 {
    return f(f(x));
}

fn increment(n: i32) i32 {
    return n + 1;
}

fn triple(n: i32) i32 {
    return n * 3;
}

// Generic: the type is a compile-time parameter
fn max(comptime T: type, a: T, b: T) T {
    return if (a > b) a else b;
}

pub fn main() void {
    std.debug.print("applyTwice(increment, 5) = {d}\n", .{applyTwice(increment, 5)});
    std.debug.print("applyTwice(triple, 2) = {d}\n", .{applyTwice(triple, 2)});

    std.debug.print("max i32: {d}\n", .{max(i32, 10, 20)});
    std.debug.print("max f64: {d}\n", .{max(f64, 3.5, 2.1)});
}
