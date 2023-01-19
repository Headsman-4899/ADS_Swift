import UIKit

func isOneWaySameLength(firstString: String, secondString: String) -> Bool {
    var countDifferent = 0
    
    for i in 0...firstString.count-1 {
        let firstIndex = firstString.index(firstString.startIndex, offsetBy: i)
        let secondIndex = secondString.index(secondString.startIndex, offsetBy: i)
        if firstString[firstIndex] != secondString[secondIndex] {
            countDifferent += 1
            if countDifferent > 1 {
                return false
            }
        }
    }
    return true
}

func isOneAwayDiffLength(firstString: String, secondString: String) -> Bool {
    var countDifferent = 0
    var i = 0
    while i < secondString.count {
        let firstIndex = firstString.index(firstString.startIndex, offsetBy: i + countDifferent)
        let secondIndex = secondString.index(secondString.startIndex, offsetBy: i)
        if firstString[firstIndex] == secondString[secondIndex] {
            i += 1
        } else {
            countDifferent += 1
            if countDifferent > 1 {
                return false
            }
        }
    }
    return true
}

func isOneAway(firstString: String, secondString: String) -> Bool {
    if firstString.count - secondString.count >= 2 || secondString.count - firstString.count >= 2 {
        return false
    } else if firstString.count == secondString.count {
        return isOneWaySameLength(firstString: firstString, secondString: secondString)
    } else if firstString.count > secondString.count {
        return isOneAwayDiffLength(firstString: firstString, secondString: secondString)
    } else {
        return isOneAwayDiffLength(firstString: secondString, secondString: firstString)
    }
}


isOneAway(firstString: "hello", secondString: "helg")
isOneAway(firstString: "helo", secondString: "helg")
isOneAway(firstString: "hello", secondString: "hello")
