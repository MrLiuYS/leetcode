/**
 68. 文本左右对齐
 https://leetcode-cn.com/problems/text-justification/
 */
import UIKit

class Solution {
    func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
        var strNum=words.count
        var lens: [Int]=[]
        for i in words {
            lens.append(i.count)
        }
        var strs: [String]=[]
        if strNum == 0 {
            return strs
        }
        func concat(_ left: Int, _ right: Int, _ len: Int) { // len表示[left,right]区间的字符串采用间隔一个空格的长度和，如果right到达数组尾端的下一位，则len是[left,right)之间的长度
            // 单词之间至少有一个空格
            if right == strNum || len > maxWidth {
                // 连接从left到right-1的字符串添加到结果中
                var res: String=""
                let cnt=right-left
                var chs: Int=0
                for i in left..<right {
                    chs+=lens[i]
                }
                let blank: Int=maxWidth-chs
                if cnt == 1 {
                    res=words[left]+String(repeating: " ", count: blank)
                } else if right == strNum {
                    // 最后一行是左对齐，即它如果有多个字符串，不是平均分配空格，而是仅隔一位空格
                    for i in left..<right-1 {
                        res+=words[i]+" "
                    }
                    res+=words[right-1]+String(repeating: " ", count: blank-right+left+1)
                } else {
                    let divide: Int=blank / (cnt-1)
                    let more: Int=blank % (cnt-1)
                    for i in 1..<cnt {
                        if i <= more {
                            res+=words[left-1+i]+String(repeating: " ", count: divide+1)
                        } else {
                            res+=words[left-1+i]+String(repeating: " ", count: divide)
                        }
                    }
                    res+=words[right-1]
                }
                strs.append(res)
                if right < strNum {
                    concat(right, right, lens[right])
                }
                return
            }
            if right == strNum-1 {
                concat(left, right+1, len)
            } else {
                concat(left, right+1, len+lens[right+1]+1)
            }
        }
        concat(0, 0, lens[0])
        return strs
    }
}

print(Solution().fullJustify(["This", "is", "an", "example", "of", "text", "justification."], 16))
