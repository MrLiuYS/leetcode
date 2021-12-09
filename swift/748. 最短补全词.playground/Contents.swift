/**
 748. 最短补全词
 https://leetcode-cn.com/problems/shortest-completing-word/
 */

class Solution {
    func shortestCompletingWord(_ licensePlate: String, _ words: [String]) -> String {
        var licenseMap = [Character: Int]()
        
        for s in licensePlate.lowercased() {
            if s >= "a", s <= "z" {
                licenseMap[s, default: 0] += 1
            }
        }
        
        var result: String?
        
        var minIndex = words.count
        
        for (index, word) in words.enumerated() {
            if checkWord(licenseMap, word) {
                if result == nil {
                    result = word
                    minIndex = index
                } else {
                    if result!.count == word.count {
                        minIndex = min(minIndex, index)
                    } else if result!.count > word.count {
                        result = word
                        minIndex = index
                    }
                }
            }
        }
        
        return result ?? ""
    }
    
    func checkWord(_ licenseMap: [Character: Int], _ word: String) -> Bool {
        var wordMap = [Character: Int]()
        for s in word {
            wordMap[s, default: 0] += 1
        }
        for (ch, count) in licenseMap {
            guard let cnt = wordMap[ch] else {
                return false
            }
            if cnt < count {
                return false
            }
        }

        return true
    }
}

print(Solution().shortestCompletingWord("1s3 PSt", ["step", "steps", "stripe", "stepple"]))
print(Solution().shortestCompletingWord("1s3 456", ["looks", "pest", "stew", "show"]))
