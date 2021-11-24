/**
 458. 可怜的小猪
 https://leetcode-cn.com/problems/poor-pigs/
 */
import UIKit

class Solution {
    func poorPigs(_ buckets: Int, _ minutesToDie: Int, _ minutesToTest: Int) -> Int {
        let states = minutesToTest / minutesToDie + 1

//        var pigs = 0
//        while pow(Double(states), Double(pigs)) < Double(buckets) {
//            pigs += 1
//        }
//        return pigs

        return Int(ceil(log(Double(buckets)) / log(Double(states))))
    }
}

print(Solution().poorPigs(1000, 15, 60))

print(Solution().poorPigs(4, 15, 15))

print(Solution().poorPigs(4, 15, 30))
