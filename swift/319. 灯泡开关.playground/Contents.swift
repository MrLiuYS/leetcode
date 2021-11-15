/*
 319. 灯泡开关
 https://leetcode-cn.com/problems/bulb-switcher/
 */

import UIKit

class Solution {
    func bulbSwitch(_ n: Int) -> Int {
        return Int(floor(sqrt(Double(n))))
    }
}

print(Solution().bulbSwitch(3))
