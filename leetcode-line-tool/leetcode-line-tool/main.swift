//
//  main.swift
//  leetcode-line-tool
//
//  Created by 刘永生 on 2021/8/26.
//

import Foundation

class Solution {
    func visiblePoints(_ points: [[Int]], _ angle: Int, _ location: [Int]) -> Int {
        
        var list = [Double]()
        var cnt = 0

        let x = location[0], y = location[1]
        let pi = Double.pi
        
        for point in points {
            let a = point[0], b = point[1]
            
            if a == x, b == y {
                cnt += 1
                continue
            }
            list.append(atan2(Double(b - y), Double(a - x)))
        }
        
        list.sort()
        
        let m = list.count
        
        for i in 0 ..< m {
            list.append(list[i] + 2 * pi)
        }
        
        var maxCnt = 0
        
        var right = 0
        
        let toDegree = Double(angle) * pi / 180
        
        for i in 0 ..< m {
            let curr = list[i] + toDegree
            while right < list.count, list[right] <= curr {
                right += 1
            }
            maxCnt = max(maxCnt, right - i)
        }

        return maxCnt + cnt
    }
}

print(Solution().visiblePoints([[2, 1], [2, 2], [3, 3]], 90, [1, 1]))
