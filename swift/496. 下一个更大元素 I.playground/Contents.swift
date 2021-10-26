/**
 496. 下一个更大元素 I
 https://leetcode-cn.com/problems/next-greater-element-i/
 */

class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        if nums2.count == 0 {
            return []
        }
        if nums2.count == 1 {
            return [-1]
        }
        var stack = [Int]()
        var map = [Int: Int]()
        for i in 0..<nums2.count {
            while stack.count != 0, nums2[i] > nums2[stack.last!] {
                let last = stack.removeLast()
                map[nums2[last]] = nums2[i]
            }
            stack.append(i)
        }
        var res = [Int]()
        for i in 0..<nums1.count {
            let num = nums1[i]
            if map[num] != nil {
                res.append(map[num]!)
            } else {
                res.append(-1)
            }
        }
        return res
    }
}

print(Solution().nextGreaterElement([4, 1, 2], [1, 3, 4, 2]))
