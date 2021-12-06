/**
 733. 图像渲染
 https://leetcode-cn.com/problems/flood-fill/
 */

class Solution {
    var image: [[Int]] = []
    var color: Int = 0
    var newColor = 0

    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        self.image = image
        color = image[sr][sc]
        self.newColor = newColor

        if newColor == color {
            return image
        }
        dfs(sr, sc)
        return self.image
    }

    func dfs(_ sr: Int, _ sc: Int) {
        guard sr >= 0, sr<image.count,
              sc >= 0, sc<image[0].count,
              image[sr][sc] == color else { return }
        image[sr][sc] = newColor
        dfs(sr+1, sc)
        dfs(sr-1, sc)
        dfs(sr, sc+1)
        dfs(sr, sc-1)
    }
}

print(Solution().floodFill([[1, 1, 1],
                            [1, 1, 0],
                            [1, 0, 1]], 1, 1, 2))
