/**
 1816. 截断句子
 https://leetcode-cn.com/problems/truncate-sentence/
 */

class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        //1 分割
        //2 数组截取
        //3 重组
        return s.split(separator: " ")[0 ..< k].joined(separator: " ")
    }
}

print(Solution().truncateSentence("Hello how are you Contestant", 4))
