/**
 剑指 Offer 06. 从尾到头打印链表
 https://leetcode-cn.com/problems/cong-wei-dao-tou-da-yin-lian-biao-lcof/
 */
import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
// 递归
class Solution {
    var result = [Int]()
    func reversePrint(_ head: ListNode?) -> [Int] {
        reverse(head)
        return result
    }

    func reverse(_ head: ListNode?) {
        guard let head = head else {
            return
        }
        reverse(head.next)

        result.append(head.val)
    }
}

/* 方法1.暴力解决
 class Solution {
     func reversePrint(_ head: ListNode?) -> [Int] {
         var result = [Int]()

         var headNode = head

         while headNode != nil {
             result.append(headNode!.val)

             headNode = headNode!.next
         }

         return result.reversed()
     }
 }
  */

var node1 = ListNode(1)
var node3 = ListNode(3)
var node2 = ListNode(2)

node1.next = node3
node3.next = node2

print(Solution().reversePrint(node1))
