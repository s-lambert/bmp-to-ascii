const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const image = @embedFile("./final bravern endcard.bmp");

    // Extract width and height from header
    const width = std.mem.readIntLittle(u32, image[18..22]);
    const height = std.mem.readIntLittle(u32, image[22..26]);
    try stdout.print("{d} {d}\n", .{ width, height });
}
