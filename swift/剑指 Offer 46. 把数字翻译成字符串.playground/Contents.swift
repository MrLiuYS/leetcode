/**
 剑指 Offer 46. 把数字翻译成字符串
 https://leetcode-cn.com/problems/ba-shu-zi-fan-yi-cheng-zi-fu-chuan-lcof/
 */
import UIKit

class Solution {
    func translateNum(_ num: Int) -> Int {
        if num <= 0 {
            return 1
        }
        
        let ba = num % 100
        
        if ba <= 9 || ba >= 26 {
            return translateNum(num / 10)
        } else {
            return translateNum(num / 10) + translateNum(num / 100)
        }
    }
}

print(Solution().translateNum(12258))
