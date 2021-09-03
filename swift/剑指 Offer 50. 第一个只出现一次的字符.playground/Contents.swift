/**
 剑指 Offer 50. 第一个只出现一次的字符
 https://leetcode-cn.com/problems/di-yi-ge-zhi-chu-xian-yi-ci-de-zi-fu-lcof/
 */
import UIKit

class Solution {
    func firstUniqChar(_ s: String) -> Character {
        var map = [Character: Int]()

        for num in s {
            if map[num] != nil {
                map[num]! += 1
            } else {
                map[num] = 1
            }
        }

        for num in s {
            if let value = map[num], value == 1 {
                return num
            }
        }

        return " "
    }
}

print(Solution().firstUniqChar("abaccdeff"))
print(Solution().firstUniqChar(""))
