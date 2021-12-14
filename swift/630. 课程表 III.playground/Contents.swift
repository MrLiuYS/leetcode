/**
 630. 课程表 III
 https://leetcode-cn.com/problems/course-schedule-iii/
 */

class Solution {
    func scheduleCourse(_ courses: [[Int]]) -> Int {
        let courseSorts = courses.sorted { $0.last! < $1.last! }

        // 总课程时间
        var total = 0

        var queue = [Int]()

        for cource in courseSorts {
            let ti = cource[0], di = cource[1]

            if total + ti <= di {
                total += ti
                queue.append(ti)
                queue.sort(by: <)

            } else if !queue.isEmpty, queue.last! > ti {
                total = total - queue.last! + ti

                queue.removeLast()

                queue.append(ti)

                queue.sort(by: <)
            }
        }

        return queue.count
    }
}

print(Solution().scheduleCourse([[7,17],[3,12],[10,20],[9,10],[5,20],[10,19],[4,18]]))
// print(Solution().scheduleCourse([[100, 200], [200, 1300], [1000, 1250], [2000, 3200]]))

// print(Solution().scheduleCourse([[1, 2]]))
// print(Solution().scheduleCourse([[3, 2], [4, 3]]))
//
// print(Solution().scheduleCourse([[5, 5], [4, 6], [2, 6]]))
