/**
 165. 比较版本号
 https://leetcode-cn.com/problems/compare-version-numbers/
 */
import UIKit

class Solution {
    func compareVersion(_ version1: String, _ version2: String) -> Int {
        let arr1 = version1.components(separatedBy: ".")
        let arr2 = version2.components(separatedBy: ".")
        
        let maxCount = max(arr1.count, arr2.count)
        
        for index in 0 ..< maxCount {
            let num1 = index < arr1.count ? (Int(arr1[index]) ?? 0) : 0
            let num2 = index < arr2.count ? (Int(arr2[index]) ?? 0) : 0
            
            if num1 > num2 {
                return 1
            } else if num1 < num2 {
                return -1
            }
        }
        
        return 0
    }
}

print(Solution().compareVersion("1.01.01", "1.001"))
