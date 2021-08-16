/**
 36. 有效的数独
 https://leetcode-cn.com/problems/valid-sudoku/
 */
import UIKit

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rowDic = [Set<Int>](repeating: Set<Int>(), count: board.count)
        var colDic = [Set<Int>](repeating: Set<Int>(), count: board[0].count)
        var gridDic = [Set<Int>](repeating: Set<Int>(), count: 9)

        for i in 0 ..< board.count {
            for j in 0 ..< board[i].count {
                let numStr = String(board[i][j])
                
                if numStr == "." {
                    continue
                }
                
                let num = Int(numStr)!
                
                let gridIndex = (i / 3) * 3 + j / 3
             
                if rowDic[i].contains(num)
                    || colDic[j].contains(num)
                    || gridDic[gridIndex].contains(num)
                {
                    return false
                }
                
                rowDic[i].insert(num)
                colDic[j].insert(num)
                gridDic[gridIndex].insert(num)
            }
        }
        
        return true
    }
}

print(Solution().isValidSudoku([["5", "3", ".", ".", "7", ".", ".", ".", "."],
                                ["6", ".", ".", "1", "9", "5", ".", ".", "."],
                                [".", "9", "8", ".", ".", ".", ".", "6", "."],
                                ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
                                ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
                                ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
                                [".", "6", ".", ".", ".", ".", "2", "8", "."],
                                [".", ".", ".", "4", "1", "9", ".", ".", "5"],
                                [".", ".", ".", ".", "8", ".", ".", "7", "9"]]))
