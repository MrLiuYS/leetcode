
/**
 1005. K 次取反后最大化的数组和
 https://leetcode-cn.com/problems/maximize-sum-of-array-after-k-negations/
 */

class Solution {
    func largestSumAfterKNegations(_ nums: [Int], _ k: Int) -> Int {
        var array = nums.sorted(by: <)
        
        var time = k
        
        // 贪心: 先讲能能转的负数尽可能的转成正数
        for index in 0 ..< array.count {
            if array[index] < 0, time > 0 {
                array[index] = -array[index]
                time -= 1
            }
        }
        array = array.sorted(by: <)
        
        if time % 2 == 1 {
            array[0] = -array[0]
        }
        
        return array.reduce(0) { $0 + $1 }
    }
}

print(Solution().largestSumAfterKNegations([2, -3, -1, 5, -4], 2))
// print(Solution().largestSumAfterKNegations([4, 2, 3], 1))
