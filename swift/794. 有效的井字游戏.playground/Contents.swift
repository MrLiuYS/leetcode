/**
 794. 有效的井字游戏
 https://leetcode-cn.com/problems/valid-tic-tac-toe-state/
 */

class Solution {
    func validTicTacToe(_ board: [String]) -> Bool {
        var cs = [[Character]](repeating: [Character](repeating: " ", count: 3), count: 3)

        var xCount = 0, oCount = 0

        for (i, r) in board.enumerated() {
            for (j, c) in r.enumerated() {
                if c == "X" {
                    xCount += 1
                } else if c == "O" {
                    oCount += 1
                }
                cs[i][j] = c
            }
        }

        // 获胜的一方.必须满足 oCount = xCount. 或者 xCount - 1 = oCount
        if oCount != xCount, oCount != xCount - 1 {
            return false
        }

        if win(cs, "X"), oCount != xCount - 1 {
            return false
        }
        if win(cs, "O"), oCount != xCount {
            return false
        }

        return true
    }

    func win(_ cs: [[Character]], _ p: Character) -> Bool {
        // 竖向/横向
        for i in 0 ..< 3 {
            if p == cs[0][i], p == cs[1][i], p == cs[2][i] {
                return true
            }
            if p == cs[i][0], p == cs[i][1], p == cs[i][2] {
                return true
            }
        }
        // 斜方向
        if p == cs[0][0], p == cs[1][1], p == cs[2][2] {
            return true
        }
        // 斜方向
        if p == cs[0][2], p == cs[1][1], p == cs[2][0] {
            return true
        }
        return false
    }
}

print(Solution().validTicTacToe(["XOX", " X ", "   "]))
print(Solution().validTicTacToe(["XOX", "O O", "XOX"]))


