const std = @import("std");
pub fn isIsogram(str: []const u8) bool {
    var used = [_]bool{false}**26;
    for(str)|c|{
        const lower = std.ascii.toLower(c);
        if('a'<=lower and lower<='z'){
            const idx = lower-'a';
            if(used[idx])return false;
            used[idx]=true;
        }
    }
    return true;
}
