/**
 372. 超级次方
 https://leetcode-cn.com/problems/super-pow/
 */

class Solution {
    let mod = 1337

    func superPow(_ a: Int, _ b: [Int]) -> Int {
        var a = a
        var ans = 1

        for index in (0 ..< b.count).reversed() {
            ans = Int(ans * pow(a, b[index]) % mod)
            a = pow(a, 10)
        }

        return ans
    }

    func pow(_ x: Int, _ n: Int) -> Int {
        var x = x
        var n = n
        var res = 1
        while n != 0 {
            if n % 2 != 0 {
                res = (res * x % mod)
            }
            x = (x * x % mod)
            n /= 2
        }
        return res
    }
}

print(Solution().superPow(2147483647, [2, 0, 0]))
