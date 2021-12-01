/**
 506. 相对名次
 https://leetcode-cn.com/problems/relative-ranks/
 */

class Solution {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        let medals = ["Gold Medal", "Silver Medal", "Bronze Medal"]
        
        var sortMap = [Int: String]()
        
        score.sorted(by: >)
            .enumerated()
            .forEach { index, value in
                
                if index < 3 {
                    sortMap[value] = medals[index]
                } else {
                    sortMap[value] = String(index + 1)
                }
            }
        
        var result = [String]()

        for num in score {
            if let rank = sortMap[num] {
                result.append(rank)
            }
        }
        
        return result
    }
}

print(Solution().findRelativeRanks([10, 3, 8, 9, 4]))
