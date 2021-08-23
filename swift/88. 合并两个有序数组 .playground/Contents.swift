/**
 88. 合并两个有序数组
 https://leetcode-cn.com/problems/merge-sorted-array/
 */
import UIKit

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        var j = n - 1
        var res = m + n - 1

        while j >= 0 {
            if i >= 0, nums1[i] > nums2[j] {
                nums1[res] = nums1[i]
                i -= 1
            } else {
                nums1[res] = nums2[j]
                j -= 1
            }
            res -= 1
        }
    }
}

var nums1 = [1, 2, 3, 0, 0, 0]
var m = 3
var nums2 = [2, 5, 6]
var n = 3

Solution().merge(&nums1, m, nums2, n)

print(nums1)
