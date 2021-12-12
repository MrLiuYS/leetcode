/**
 709. 转换成小写字母
 https://leetcode-cn.com/problems/to-lower-case/
 */

// class Solution {
//    func toLowerCase(_ s: String) -> String {
//        return s.lowercased()
//    }
// }

class Solution {
    func toLowerCase(_ s: String) -> String {
        var result = ""
        
        for c in s {
            if c.asciiValue! > 64, c.asciiValue! < 91 {
                result.append(Character(Unicode.Scalar(c.asciiValue! + 32)))
                
            } else {
                result.append(c)
            }
        }
        
        return result
    }
}

print(Solution().toLowerCase("Hello"))
