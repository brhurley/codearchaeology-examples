const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    // Handle a missing file explicitly; propagate any other error
    const file = std.fs.cwd().openFile("languages.txt", .{}) catch |err| switch (err) {
        error.FileNotFound => {
            std.debug.print("languages.txt not found - run write_file.zig first\n", .{});
            return;
        },
        else => return err,
    };
    defer file.close();

    // Read the entire file (up to 1 MiB) into allocated memory
    const contents = try file.readToEndAlloc(allocator, 1024 * 1024);
    defer allocator.free(contents);

    std.debug.print("{s}", .{contents});

    // Process the contents line by line
    var lines = std.mem.splitScalar(u8, contents, '\n');
    var count: usize = 0;
    while (lines.next()) |line| {
        if (line.len > 0) count += 1;
    }
    std.debug.print("({d} non-empty lines)\n", .{count});
}
