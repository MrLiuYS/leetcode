/**
 剑指 Offer 35. 复杂链表的复制
 https://leetcode-cn.com/problems/fu-za-lian-biao-de-fu-zhi-lcof/
 */
import UIKit

public class ListNode: NSCopying {
    public var val: Int
    public var next: ListNode?
    public var random: ListNode?
    public init() { self.val = 0; self.next = nil }
    public init(_ val: Int) { self.val = val; self.next = nil }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
    public init(_ val: Int, _ next: ListNode?, _ random: ListNode?) { self.val = val; self.next = next; self.random = random }
    public func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}

class Solution {
    var map = NSMutableDictionary()

    func copyRandomList(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }
        if let value = map[head as Any] {
            return value as? ListNode
        }

        let node = ListNode(head!.val)
        map[head as Any] = node
        node.next = copyRandomList(head!.next)
        node.random = copyRandomList(head?.random)

        return node
    }
}

let node7 = ListNode(7)
let node13 = ListNode(13)
let node11 = ListNode(11)
let node10 = ListNode(10)
let node1 = ListNode(1)

node7.next = node13

node13.next = node11
node13.random = node7

node11.next = node10
node11.random = node1

node10.next = node1
node10.random = node11

node1.random = node7

var node = Solution().copyRandomList(node7)

while node != nil {
    print("---------指针", node?.val as Any)
    print("---------next指针", node?.next?.val as Any)
    print("---------随机指针", node?.random?.val as Any)

    node = node?.next
}
