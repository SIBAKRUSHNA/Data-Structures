import UIKit

//Merge Sort

func merge(_ leftArr: [Int], rightArr: [Int]) -> [Int] {
    var numberArray = [Int]()
    var leftArr = leftArr
    var rightArr = rightArr
    while leftArr.count > 0 && rightArr.count > 0 {
        if leftArr.first! < rightArr.first! {
            numberArray.append(leftArr.removeFirst())
        } else {
            numberArray.append(rightArr.removeFirst())
        }
    }
    
    return numberArray + leftArr + rightArr
}
func mergeSort(_ inputArr: [Int]) -> [Int] {
    guard inputArr.count > 1 else { return inputArr}
   var leftArr = Array(inputArr[0..<inputArr.count/2])
   var rightArr = Array(inputArr[inputArr.count/2..<inputArr.count])
    return merge(mergeSort(leftArr), rightArr: mergeSort(rightArr))
    
}
print(mergeSort([1, 4, 6, 9, 8, 7, 6, 5, 4, 1]))
