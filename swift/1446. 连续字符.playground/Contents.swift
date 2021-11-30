/**
 1446. 连续字符
 https://leetcode-cn.com/problems/consecutive-characters/
 */
// import UIKit

class Solution {
    func maxPower(_ s: String) -> Int {
        guard !s.isEmpty else {
            return 0
        }
        if s.count < 2 {
            return 1
        }

        let array = Array(s)

        var left = 0, right = 0

        var result = 0
        var tempMax = 0

        while left < array.count - 1, right < array.count {
            if array[left] == array[right] {
                tempMax += 1
                result = max(tempMax, result)
                right += 1
            } else {
                left += 1
                right = left
                tempMax = 0
            }
        }

        return result
    }
}

print(Solution().maxPower("ccbccbb"))
print(Solution().maxPower("leetcode"))
print(Solution().maxPower("abbcccddddeeeeedcba"))
print(Solution().maxPower("triplepillooooow"))
print(Solution().maxPower("hooraaaaaaaaaaay"))
print(Solution().maxPower("tourist"))
