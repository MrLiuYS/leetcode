/**
 423. 从英文中重建数字
 https://leetcode-cn.com/problems/reconstruct-original-digits-from-english/
 */

class Solution {
    func originalDigits(_ s: String) -> String {
        var map = [Character: Int]()
        
        for ch in s {
            if map[ch] != nil {
                map[ch] = map[ch]! + 1
            } else {
                map[ch] = 1
            }
        }
        
        var list = [Int](repeating: 0, count: 10)
        
        list[0] = map["z"] ?? 0
        list[2] = map["w"] ?? 0
        list[4] = map["u"] ?? 0
        list[6] = map["x"] ?? 0
        list[8] = map["g"] ?? 0
        
        list[3] = (map["h"] ?? 0) - list[8]
        list[5] = (map["f"] ?? 0) - list[4]
        list[7] = (map["s"] ?? 0) - list[6]
        
        list[1] = (map["o"] ?? 0) - list[0] - list[2] - list[4]
        list[9] = (map["i"] ?? 0) - list[5] - list[6] - list[8]
        
        var result = ""
        
        for i in 0 ..< list.count {
            for _ in 0 ..< list[i] {
                result += "\(i)"
            }
        }
        
        return result
    }
}

print(Solution().originalDigits("owoztneoer"))

print(Solution().originalDigits("fviefuro"))
