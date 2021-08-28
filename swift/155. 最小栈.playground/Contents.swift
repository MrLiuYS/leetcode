/**
 155. 最小栈
 https://leetcode-cn.com/problems/min-stack/
 */
import UIKit

class MinStack {
    var nums = [Int]()

    var minNum: Int?

    init() {}

    func push(_ val: Int) {
        nums.append(val)
        minNum = min(minNum ?? .max, val)
    }

    func pop() {
        let last = nums.popLast()
        if last == minNum {
            minNum = nums.min()
        }
    }

    func top() -> Int {
        guard nums.count > 0 else {
            return 0
        }
        return nums.last!
    }

    func getMin() -> Int {
        return minNum ?? 0
    }
}

let obj = MinStack()

obj.push(-2)
obj.push(0)
obj.push(-3)

obj.getMin()

obj.pop()

let ret_3: Int = obj.top()

let ret_4: Int = obj.getMin()

print(ret_3, ret_4)
