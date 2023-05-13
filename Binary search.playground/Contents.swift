import UIKit
//Binary search
func binarySearch(_ array: [Int], _ value: Int) -> Int? {
    guard !array.isEmpty else { return nil }
    var left = 0
    var right = array.count - 1
    
    while left <= right {
        let middleIndex = (left + right) / 2
        let middleValue = array[middleIndex]
        if middleValue > value {
            right = middleIndex - 1
        } else if middleValue < value {
            left = middleIndex + 1
        } else if middleValue == value {
            return middleIndex
        }
    }
    return nil
}
print(binarySearch([2, 4, 5, 6, 12, 34, 56, 67, 78, 99], 56))
