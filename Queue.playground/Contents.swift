import UIKit
class Queue {
    private var newValues = [Int]()
    //Enqueue
    func enqueue(_ value: Int) {
        newValues.append(value)
    }
    //Dequeue
    func dequeue() -> Int? {
        if newValues.isEmpty {
            return nil
        } else {
            return newValues.removeFirst()
        }
    }
    //Peek
    func peek() -> Int? {
        if newValues.isEmpty {
            return nil
        } else {
            return newValues.first
        }
    }
}
let queue = Queue()
queue.enqueue(9)
queue.enqueue(7)
queue.dequeue()
queue.peek()
