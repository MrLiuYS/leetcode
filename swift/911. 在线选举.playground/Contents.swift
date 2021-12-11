/**
 911. 在线选举
 https://leetcode-cn.com/problems/online-election/
 */

class TopVotedCandidate {
    // 预排序好的结果
    var tops = [Int]()

    // 投票的结果
    var voteCounts = [Int: Int]()

    // 传入的时间
    var times: [Int]!

    init(_ persons: [Int], _ times: [Int]) {
        self.times = times

        // 预插值
        voteCounts[-1] = -1
        var top = -1

        for p in persons {
            voteCounts[p, default: 0] += 1

            if voteCounts[p]! >= voteCounts[top]! {
                top = p
            }

            tops.append(top)
        }
    }

    func q(_ t: Int) -> Int {
        var left = 0, right = times.count - 1

        while left < right {
            let mid = left + (right - left + 1) / 2

            if times[mid] <= t {
                left = mid
            } else {
                right = mid - 1
            }
        }

        return tops[left]
    }
}

let obj = TopVotedCandidate([0, 1, 1, 0, 0, 1, 0], [0, 5, 10, 15, 20, 25, 30])

print(obj.q(3))
print(obj.q(12))
print(obj.q(25))
print(obj.q(15))
print(obj.q(24))
print(obj.q(8))
