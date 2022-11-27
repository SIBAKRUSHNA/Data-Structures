import UIKit

//Insertion Sort

func insertionSort(_ inputArr: [Int]) -> [Int] {
    var numberArray = inputArr
    for i in 1...numberArray.count - 1 {
        var position = i
        let value = numberArray[i]
        while position > 0 && numberArray[position - 1] > value {
            numberArray[position] = numberArray[position - 1]
            position -= 1
        }
        numberArray[position] = value
    }
    return numberArray
}
print(insertionSort([1, 4, 6, 9, 8, 7, 6, 5, 4, 1]))
