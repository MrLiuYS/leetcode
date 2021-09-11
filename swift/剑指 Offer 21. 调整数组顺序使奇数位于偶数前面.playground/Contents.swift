/**
 剑指 Offer 21. 调整数组顺序使奇数位于偶数前面
 https://leetcode-cn.com/problems/diao-zheng-shu-zu-shun-xu-shi-qi-shu-wei-yu-ou-shu-qian-mian-lcof/
 */

class Solution {
    func exchange(_ nums: [Int]) -> [Int] {
        var arr = nums
        var i = 0, j = nums.count - 1
        while i < j {
            if arr[i] % 2 == 0 {
                arr.swapAt(i, j)
                j -= 1
            } else {
                i += 1
            }
        }
        return arr
    }
}

print(Solution().exchange([1, 2, 3, 4]))
