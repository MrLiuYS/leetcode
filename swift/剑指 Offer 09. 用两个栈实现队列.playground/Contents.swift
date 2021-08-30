/**
 剑指 Offer 09. 用两个栈实现队列
 https://leetcode-cn.com/problems/yong-liang-ge-zhan-shi-xian-dui-lie-lcof/
 */
import UIKit

class CQueue {
    var stack1 = [Int]()
    var stack2 = [Int]()

    init() {}

    func appendTail(_ value: Int) {
        stack1.append(value)
    }

    func deleteHead() -> Int {
        if stack2.isEmpty {
            while let last = stack1.popLast() {
                stack2.append(last)
            }
        }

        return stack2.popLast() ?? -1
    }
}

let obj = CQueue()

obj.deleteHead()
obj.appendTail(5)
obj.appendTail(2)
obj.deleteHead()
obj.deleteHead()


//let obj = CQueue()
//obj.appendTail(3)
//let ret_2: Int = obj.deleteHead()
//let ret_3: Int = obj.deleteHead()
//let ret_4: Int = obj.deleteHead()
//
//print(ret_2, ret_3,ret_4)
