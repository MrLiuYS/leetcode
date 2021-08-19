/**
 204. 计数质数
 https://leetcode-cn.com/problems/count-primes/
 */

import UIKit

class Solution {
    func countPrimes(_ n: Int) -> Int {
        if n < 3 {
            return 0
        }
        var data = [Bool](repeating: true, count: n)
        var count = 0

        for i in 2 ..< n {
            if data[i] {
                var j = i * 2
                while j < n {
                    data[j] = false
                    j+=i
                }
                count+=1
            }
        }

//        for index in 2 ..< data.count {
//            if data[index] == true {
//                print(index)
//            }
//        }

        return count
    }
}

print(Solution().countPrimes(10))
