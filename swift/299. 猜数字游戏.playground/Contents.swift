/**
 299. 猜数字游戏
 https://leetcode-cn.com/problems/bulls-and-cows/
 */
class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        var a = 0, b = 0
        let ascii0 = Int(Character("0").asciiValue!)
        var nums = Array(repeating: 0, count: 10)

        for (c1, c2) in zip(secret, guess) {
//            print(c1, c2)
            if c1 == c2 {
                a += 1
            } else {
                let i = Int(c1.asciiValue!) - ascii0
                let j = Int(c2.asciiValue!) - ascii0

                if nums[i] < 0 {
                    b += 1
                }

                if nums[j] > 0 {
                    b += 1
                }
                nums[i] += 1
                nums[j] -= 1
            }
        }

        return "\(a)A\(b)B"
    }
}

print(Solution().getHint("1807", "7810"))
