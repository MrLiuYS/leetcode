/**
 559. N 叉树的最大深度
 https://leetcode-cn.com/problems/maximum-depth-of-n-ary-tree/
 */
import UIKit

public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}

class Solution {
    func maxDepth(_ root: Node?) -> Int {
        guard root != nil else {
            return 0
        }

        var dMax = 0
        for subNode in root!.children {
            let subMax = maxDepth(subNode)

            dMax = max(dMax, subMax)
        }

        return dMax + 1
    }
}
