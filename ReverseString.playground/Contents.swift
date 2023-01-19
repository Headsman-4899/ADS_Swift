import UIKit

class Solution {
    func reverseString(string: inout[Character]) -> [Character] {
        var first = 0
        var last = string.count-1
        
        while first < last {
            (string[first], string[last]) = (string[last], string[first])
            first += 1
            last -= 1
        }
        
        return string
    }
}


let example = Solution()
var chars: [Character] = ["g", "o", " ", "1", "5"]
example.reverseString(string: &chars)
