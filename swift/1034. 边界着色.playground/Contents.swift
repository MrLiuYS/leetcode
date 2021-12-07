/**
 1034. 边界着色
 https://leetcode-cn.com/problems/coloring-a-border/
 */

// 题意看不懂(捂脸) . 看题解的
class Solution {
    func colorBorder(_ grid: [[Int]], _ row: Int, _ col: Int, _ color: Int) -> [[Int]] {
        let directions = [[-1, 0], [1, 0], [0, 1], [0, -1]], m = grid.count, n = grid[0].count, oriColor = grid[row][col]
        var visited = Array(repeating: Array(repeating: false, count: n), count: m), borders = Set<[Int]>(), grid = grid

        dfs(row, col)
        for bd in borders {
            grid[bd[0]][bd[1]] = color
        }

        func dfs(_ di: Int, _ dj: Int) {
            visited[di][dj] = true
            for d in directions {
                let i = di+d[0], j = dj+d[1]

                if i<0 || j<0 || i>=m || j>=n || grid[i][j] != oriColor {
                    borders.insert([di, dj])
                } else if !visited[i][j] {
                    dfs(i, j)
                }
            }
        }

        return grid
    }
}

print(Solution().colorBorder([[1, 1], [1, 2]], 0, 0, 3))
