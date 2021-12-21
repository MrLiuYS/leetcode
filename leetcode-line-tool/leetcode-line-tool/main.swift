//
//  main.swift
//  leetcode-line-tool
//
//  Created by 刘永生 on 2021/8/26.
//

import Foundation

class Solution {
    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
        let houses = houses.sorted(), heaters = heaters.sorted()
        var j = 0, ans = 0
        for i in 0 ..< houses.count {
            var d0 = abs(houses[i] - heaters[j])
            while j+1 < heaters.count {
                let d1 = abs(houses[i] - heaters[j+1])
                if d1 > d0 { break }
                d0 = d1; j += 1
            }
            ans = max(ans, d0)
        }
        return ans
    }
}

print(Solution().findRadius([1, 2, 3, 4], [1, 4]))
