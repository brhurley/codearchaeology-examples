const std = @import("std");

const DivError = error{
    DivisionByZero,
};

// Returns either a DivError or an i32
fn divide(a: i32, b: i32) DivError!i32 {
    if (b == 0) return DivError.DivisionByZero;
    return @divTrunc(a, b);
}

pub fn main() void {
    // `catch` handles the error and provides a fallback path
    const result = divide(10, 2) catch |err| {
        std.debug.print("Error: {s}\n", .{@errorName(err)});
        return;
    };
    std.debug.print("10 / 2 = {d}\n", .{result});

    // `if`/`else` captures the success value or the error
    if (divide(10, 0)) |value| {
        std.debug.print("10 / 0 = {d}\n", .{value});
    } else |err| {
        std.debug.print("Cannot divide: {s}\n", .{@errorName(err)});
    }
}
