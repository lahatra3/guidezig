const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const args = try std.process.argsAlloc(std.heap.page_allocator);
    defer std.process.argsFree(std.heap.page_allocator, args);

    for (args, 0..) |arg, i| {
        try stdout.print(
            \\ arg {} : {s}
            \\
        , .{ i, arg });
    }
}
