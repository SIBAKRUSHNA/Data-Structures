import UIKit
class Stack {
    private var values = [Int]()
    //push
    func push(_ value: Int) {
        values.append(value)
    }
    //pop
    func pop() -> Int? {
        if values.count > 0 {
           return values.removeLast()
        } else {
            return nil
        }
    }
    //peek
    func peek() -> Int? {
        if values.count > 0 {
            return values.last
        } else {
            return nil
        }
    }
}
let stack = Stack()
stack.push(5)
stack.push(8)
print(stack.pop())
print(stack.peek())
print(stack.pop())
print(stack.peek())
