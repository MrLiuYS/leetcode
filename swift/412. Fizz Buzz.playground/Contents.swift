/**
 412. Fizz Buzz
 https://leetcode-cn.com/problems/fizz-buzz/
 */

import UIKit

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        
        for index in 0 ..< n {
            let num = index + 1
            
            let Fizz = num % 3
            
            let Buzz = num % 5
            
            if Fizz == 0, Buzz == 0 {
                result.append("FizzBuzz")
            } else if Fizz == 0 {
                result.append("Fizz")
            } else if Buzz == 0 {
                result.append("Buzz")
            } else {
                result.append("\(num)")
            }
        }
        
        return result
    }
}

print(Solution().fizzBuzz(15))
