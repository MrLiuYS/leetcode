/**
 剑指 Offer 12. 矩阵中的路径
 https://leetcode-cn.com/problems/ju-zhen-zhong-de-lu-jing-lcof/
 */

class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var board = board
        let word = Array(word)
        for (row, array) in board.enumerated() {
            for (col, _) in array.enumerated() {
                if BFS(&board, word, row, col, 0) {
                    return true
                }
            }
        }
        return false
    }

    func BFS(_ board: inout [[Character]], _ word: [Character], _ row: Int, _ col: Int, _ k: Int) -> Bool {
        if row < 0 || row >= board.count
            || col < 0 || col >= board[0].count
            || board[row][col] != word[k] { return false }
        if k == word.count - 1 { return true }
        board[row][col] = " "
        // 上 || 下 || 左 || 右
        let next = BFS(&board, word, row - 1, col, k+1) || BFS(&board, word, row+1, col, k+1)
            || BFS(&board, word, row, col - 1, k+1) || BFS(&board, word, row, col+1, k+1)
        board[row][col] = word[k]
        return next
    }
}

print(Solution().exist([["A", "B", "C", "E"],
                        ["S", "F", "C", "S"],
                        ["A", "D", "E", "E"]],
                       "ABCCED"))
