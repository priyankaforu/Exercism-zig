const std = @import("std");
pub fn isPangram(str: []const u8) bool {
   const alphabet = "abcdefghijklmnopqrstuvwxyz";
    for(alphabet)|char|{
 var found = false;
    for(str)|inChar|{
      const lower = std.ascii.toLower(inChar);
        if(lower==char){
            found = true;
            break;
        }
    }
    if(!found){
        return false;
    }
 }
return true;
}
