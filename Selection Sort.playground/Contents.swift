import UIKit

//Selection Sort
func selectionSort(_ inputArr: [Int]) -> [Int] {
    var numberArray = inputArr
    for i in 0..<numberArray.count - 1 {
        var minPosition = i
        for j in i + 1 ..< numberArray.count {
            if numberArray[j] < numberArray[minPosition] {
                minPosition = j
            }
        }
        let temp = numberArray[i]
        numberArray[i] = numberArray[minPosition]
        numberArray[minPosition] = temp
    }
    return numberArray
}
print(selectionSort([1, 4, 6, 9, 8, 7, 6, 5, 4, 1]))
