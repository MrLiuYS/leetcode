/**
 74. 搜索二维矩阵
 https://leetcode-cn.com/problems/search-a-2d-matrix/
 */

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.isEmpty || matrix.first!.isEmpty {
            return false
        }

        for row in matrix {
            if let fisrt = row.first, fisrt <= target,
               let right = row.last, right >= target
            {
                if fisrt == target || right == target {
                    return true
                }

                var left = 0, right = row.count - 1

                while left <= right {
                    let mid = left + (right - left) / 2

                    if row[mid] > target {
                        right = mid - 1

                    } else if row[mid] < target {
                        left = mid + 1
                    } else {
                        return true
                    }
                }
            }
        }

        return false
    }
}

print(Solution().searchMatrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 3))

print(Solution().searchMatrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 50]], 5))
