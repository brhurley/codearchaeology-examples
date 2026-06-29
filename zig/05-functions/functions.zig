const std = @import("std");

// Takes two parameters, returns their sum
fn add(a: i32, b: i32) i32 {
    return a + b;
}

// A single-parameter function
fn square(n: i32) i32 {
    return n * n;
}

// Returns nothing (void) - performs a side effect
fn greet(name: []const u8) void {
    std.debug.print("Hello, {s}!\n", .{name});
}

pub fn main() void {
    const sum = add(3, 4);
    std.debug.print("3 + 4 = {d}\n", .{sum});
    std.debug.print("square(5) = {d}\n", .{square(5)});
    greet("Zig");
}
