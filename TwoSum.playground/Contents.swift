import UIKit

class Solution {
    func twoSum(array: [Int], target: Int) -> [Int] {
        var dictionary: [Int : Int] = [:]
        var result: [Int] = []
        
        for (i, j) in array.enumerated() {
            if let index = dictionary[target - j] {
                result.append(index)
                result.append(i)
                return result
            }
            dictionary[j] = i
        }
        return result
    }
}


let example = Solution()
example.twoSum(array: [4, 6, 2, 3, 5, 7, 8], target: 9)
