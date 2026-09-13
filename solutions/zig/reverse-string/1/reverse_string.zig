/// Writes a reversed copy of `s` to `buffer`.
pub fn reverse(buffer: []u8, s: []const u8) []u8 {
    for (s, 0..) |character, i| {
        //pseudo code: "hello"
        //pseudo: buffer acts as array; buffer[4] = h, buffer[3]=e ... buffer[0]=o
        buffer[s.len - 1 - i] = character;
    }
    
    return buffer[0..s.len];
}
