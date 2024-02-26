const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    var count: u8 = 1;
    while (count <= 100) : (count += 1) {
        if (count % 3 == 0 and count % 5 == 0) {
            try stdout.print("Fizz Buzz\n", .{});
        } else if (count % 3 == 0) {
            try stdout.print("Fizz\n", .{});
        } else if (count % 5 == 0) {
            try stdout.print("Buzz\n", .{});
        } else {
            try stdout.print("{}\n", .{count});
        }
    }
}
