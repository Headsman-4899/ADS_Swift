import UIKit

class Solution {
    func removeDublicates(input: [Int]) -> Int {
        return Set(input).count
    }
}


class Solution2 {
    func removeDuplicates(input: inout[Int]) -> Int {
        var last: Int?
        var index: Int = 0
        while index < input.count {
            if input[index] == last {
                input.remove(at: index)
            } else {
                last = input[index]
                index += 1
            }
        }
        return input.count
    }
}

let example = Solution()
example.removeDublicates(input: [0, 0, 1, 2, 2, 2, 3, 3, 3, 3, 4, 5])

let example2 = Solution2()
var array = [0, 0, 1, 2, 2, 2, 3, 3, 3, 3, 4, 5]
example2.removeDuplicates(input: &array)
