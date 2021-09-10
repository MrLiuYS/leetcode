/**
 1894. 找到需要补充粉笔的学生编号
 https://leetcode-cn.com/problems/find-the-student-that-will-replace-the-chalk/
 */
import UIKit

/**
  最后执行的输入：
  [1]
  1000000000

 class Solution {
     func chalkReplacer(_ chalk: [Int], _ k: Int) -> Int {
         if chalk.isEmpty {
             return 0
         }
        
         var remain = k
        
         var result = 0
        
         while remain >= 0 {
             let index = result % chalk.count
            
             remain -= chalk[index]
            
             if remain < 0 {
                 return index
             }
            
             result += 1
         }
        
         return result % chalk.count
     }
 }
  */

class Solution {
    func chalkReplacer(_ chalk: [Int], _ k: Int) -> Int {
        if chalk.isEmpty {
            return 0
        }
        
        let sum = chalk.reduce(0) { $0 + $1 }
        
        var remain = k % sum
       
        var result = 0
       
        while remain >= 0 {
            let index = result % chalk.count
           
            remain -= chalk[index]
           
            if remain < 0 {
                return index
            }
           
            result += 1
        }
       
        return result % chalk.count
        
    }
}

print("result:", Solution().chalkReplacer([5, 1, 5], 22))
print("result:", Solution().chalkReplacer([3, 4, 1, 2], 25))
