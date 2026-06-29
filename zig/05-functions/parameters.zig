const std = @import("std");

// Receives a copy - the caller's value is untouched
fn tryToDouble(n: i32) void {
    const doubled = n * 2; // work on a local copy
    std.debug.print("inside (copy): {d}\n", .{doubled});
}

// Receives a pointer - modifies the caller's value
fn doubleInPlace(n: *i32) void {
    n.* = n.* * 2;
}

pub fn main() void {
    var value: i32 = 21;

    tryToDouble(value);
    std.debug.print("after tryToDouble: {d}\n", .{value});

    doubleInPlace(&value);
    std.debug.print("after doubleInPlace: {d}\n", .{value});
}
