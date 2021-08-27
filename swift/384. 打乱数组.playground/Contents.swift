/**
 384. 打乱数组
 https://leetcode-cn.com/problems/shuffle-an-array/
 */

import UIKit

class Solution {
    var _nums: [Int]!
    
    var _sets = Set<Int>()
    
    init(_ nums: [Int]) {
        _nums = nums
        _nums.forEach { int in
            _sets.insert(int)
        }
    }
    
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return _nums
    }
    
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
        return _sets.shuffled()
    }
}



let obj = Solution([1, 2, 3])
let ret_1: [Int] = obj.reset()
let ret_2: [Int] = obj.shuffle()

print(ret_1)
print(ret_2)
