/**
 326. 3的幂
 https://leetcode-cn.com/problems/power-of-three/
 */

import UIKit

class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n >= 1 else {
            return false
        }

        var result = n
        while result % 3 == 0 {
            result /= 3
        }

        return result == 1
    }
}

print(Solution().isPowerOfThree(27))
print(Solution().isPowerOfThree(2))
