/**
 384. 打乱数组
 https://leetcode-cn.com/problems/shuffle-an-array/
 */

import UIKit

/// 方法一
class Solution {
    var _nums: [Int]!

    var _orgNums: [Int]!

    init(_ nums: [Int]) {
        _nums = nums
        _orgNums = nums
    }

    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return _orgNums
    }

    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
        let count = _orgNums.count

        for index in 0 ..< _orgNums.count {
            
            //leetcode 没有办法识别arc4random
            let random = Int.random(in: index ..< count)
            
            _nums.swapAt(index, random)
        }

        return _nums
    }
}

/// 方法二
// class Solution {
//    var _nums: [Int]!
//
//    var _sets = Set<Int>()
//
//    init(_ nums: [Int]) {
//        _nums = nums
//        _nums.forEach { int in
//            _sets.insert(int)
//        }
//    }
//
//    /** Resets the array to its original configuration and return it. */
//    func reset() -> [Int] {
//        return _nums
//    }
//
//    /** Returns a random shuffling of the array. */
//    func shuffle() -> [Int] {
//        return _sets.shuffled()
//    }
// }

let obj = Solution([1, 2, 3 , 4])
let ret_1: [Int] = obj.reset()
let ret_2: [Int] = obj.shuffle()

print(ret_1)
print(ret_2)
