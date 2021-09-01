/**
 剑指 Offer 05. 替换空格
 https://leetcode-cn.com/problems/ti-huan-kong-ge-lcof/
 */
import UIKit

class Solution {
    func replaceSpace(_ s: String) -> String {
        return s.replacingOccurrences(of: " ", with: "%20")
    }
}

print(Solution().replaceSpace("We are happy."))
