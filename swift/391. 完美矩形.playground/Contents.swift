
/**
 391. 完美矩形
 https://leetcode-cn.com/problems/perfect-rectangle/
 */
import UIKit

class Solution {
    func isRectangleCover(_ rectangles: [[Int]]) -> Bool {
        var left = Int.max
        var right = Int.min
        var top = Int.min
        var bottom = Int.max

        var set = Set<String>()

        var sum = 0

        for i in 0 ..< rectangles.count {
            let t = rectangles[i]
            left = min(left, t[0])
            bottom = min(bottom, t[1])
            right = max(right, t[2])
            top = max(top, t[3])
            sum += caculateArea(t[0], t[1], t[2], t[3])
            var strings = [String]()
            strings.append(merge(t[0], t[1]))
            strings.append(merge(t[0], t[3]))
            strings.append(merge(t[2], t[1]))
            strings.append(merge(t[2], t[3]))

            for j in 0 ..< 4 {
                if set.contains(strings[j]) {
                    set.remove(strings[j])
                } else {
                    set.insert(strings[j])
                }
            }
        }

        if set.count == 4, // 判断顶点数
           set.contains(merge(left, top)), // 判断左上
           set.contains(merge(left, bottom)), // 判断左下
           set.contains(merge(right, top)), // 判断右上
           set.contains(merge(right, bottom)) // 判断右下
        {
            return sum == caculateArea(left, bottom, right, top) // 判断面积
        }

        return false
    }

    func caculateArea(_ left: Int, _ bottom: Int, _ right: Int, _ top: Int) -> Int {
        return (top - bottom) * (right - left)
    }

    func merge(_ a: Int, _ b: Int) -> String {
        return "\(a) \(b)"
    }
}

print(Solution().isRectangleCover([
    [1, 1, 3, 3],
    [3, 1, 4, 2],
    [3, 2, 4, 4],
    [1, 3, 2, 4],
    [2, 3, 3, 4]
]))

print(Solution().isRectangleCover([
    [1, 1, 2, 3], [1, 3, 2, 4], [3, 1, 4, 2], [3, 2, 4, 4]
]))
