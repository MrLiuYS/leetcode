/**
 面试题 17.14. 最小K个数
 https://leetcode-cn.com/problems/smallest-k-lcci/
 */
import UIKit

class Solution {
    func smallestK(_ arr: [Int], _ k: Int) -> [Int] {
        let arr = arr.sorted(by: <)
        
        var result = [Int]()
        
        for index in 0 ..< k {
            result.append(arr[index])
        }
        
        return result
    }
}

print(Solution().smallestK([1, 3, 5, 7, 2, 4, 6, 8], 4))
