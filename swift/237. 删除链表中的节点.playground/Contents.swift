/*
 https://leetcode-cn.com/problems/delete-node-in-a-linked-list/submissions/
 */

import UIKit

class Solution {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }
    func deleteNode(_ node: ListNode?) {
        node?.val = node?.next?.val as! Int
        node?.next = node?.next?.next
    }
}
