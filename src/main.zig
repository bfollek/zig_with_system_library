const std = @import("std");
const rl = @cImport(@cInclude("editline/readline.h"));

pub fn main() !void {
    while (true) {
        const input = rl.readline("Enter something (CTRL/C to stop)> ");
        _ = rl.add_history(input);
    }
}
