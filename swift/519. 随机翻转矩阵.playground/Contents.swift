import Darwin
/**
 519. 随机翻转矩阵
 https://leetcode-cn.com/problems/random-flip-matrix/
 */

class Solution {
    var map = [Int: Int]()

    var m: Int
    var n: Int
    var total: Int

    init(_ m: Int, _ n: Int) {
        self.m = m
        self.n = n
        total = m * n
    }

    func flip() -> [Int] {
        let x = Int.random(in: 0 ..< total)

        total -= 1

        let idx = map[x] ?? x

        map[x] = map[total] ?? total

        return [idx / n, idx % n]
    }

    func reset() {
        total = m * n
        map.removeAll()
    }
}

let obj = Solution(3, 1)
obj.flip()
obj.flip()
obj.flip()
obj.reset()
obj.flip()
