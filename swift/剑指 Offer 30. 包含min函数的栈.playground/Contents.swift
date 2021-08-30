/**
 剑指 Offer 30. 包含min函数的栈
 https://leetcode-cn.com/problems/bao-han-minhan-shu-de-zhan-lcof/
 */
import UIKit

class MinStack {
    /** initialize your data structure here. */

    var _stack = [Int]()

    var _minNum: Int?

    init() {}

    func push(_ x: Int) {
        _stack.append(x)
        _minNum = Swift.min(x, _minNum ?? Int.max)
    }

    func pop() {
        let last = _stack.popLast()
        if _minNum == last {
            _minNum = _stack.min()
        }
    }

    func top() -> Int {
        return _stack.last ?? 0
    }

    func min() -> Int {
        return _minNum ?? Int.min
    }
}

let obj = MinStack()
obj.push(-2)
obj.push(0)
obj.push(-3)
obj.min()
obj.pop()
let ret_3: Int = obj.top()
let ret_4: Int = obj.min()
