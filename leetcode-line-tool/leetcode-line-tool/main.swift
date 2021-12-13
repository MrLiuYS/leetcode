//
//  main.swift
//  leetcode-line-tool
//
//  Created by 刘永生 on 2021/8/26.
//

import Foundation

class Solution {
    func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
        // 存放列最大值
        var colMax = [Int](repeating: 0, count: grid.count)
        // 存放行最大值
        var rowMax = [Int](repeating: 0, count: grid[0].count)
        
        for col in 0..<grid.count {
            for row in 0..<grid[0].count {
                colMax[col] = max(colMax[col], grid[col][row])
                rowMax[row] = max(rowMax[row], grid[col][row])
            }
        }
        
        var result = 0
        
        for col in 0..<grid.count {
            for row in 0..<grid[0].count {
                result += min(colMax[col], rowMax[row]) - grid[col][row]
            }
        }
        
        return result
    }
}

print(Solution().maxIncreaseKeepingSkyline([[3, 0, 8, 4], [2, 4, 5, 7], [9, 2, 6, 3], [0, 3, 1, 0]]))
