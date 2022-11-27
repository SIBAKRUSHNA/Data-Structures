import UIKit
//Bobbule Sort
func bobbuleSort(_ inputArr: [Int]) -> [Int] {
    var numberArray = inputArr
    for _ in 0..<numberArray.count - 1 {
        for j in 0..<numberArray.count - 1 {
            if numberArray[j] > numberArray[j + 1] {
                var temp = numberArray[j]
                numberArray[j] = numberArray[j + 1]
                numberArray[j + 1] = temp
            }
        }
    }
    return numberArray
}
print(bobbuleSort([1, 4, 6, 9, 8, 7, 6, 5, 4, 1]))
