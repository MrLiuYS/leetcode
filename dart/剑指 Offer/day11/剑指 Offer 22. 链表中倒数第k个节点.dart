/** 
 *  dart
 *  剑指 Offer 22. 链表中倒数第k个节点
 *  https://leetcode-cn.com/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof/
 */
class ListNode {
  late int val;
  ListNode? next;
  ListNode(int val) {
    this.val = val;
    this.next = null;
  }
}

class Solution {
  ListNode? getKthFromEnd(ListNode? head, int k) {
    ListNode? fast = head;

    for (var i = 0; i < k - 1; i++) {
      ListNode? node = fast?.next;
      if (node != null) {
        fast = node;
      } else {
        return null;
      }
    }
    ListNode? slow = head;

    while (fast?.next != null) {
      fast = fast?.next;
      slow = slow?.next;
    }

    return slow;
  }
}

main(List<String> args) {
  ListNode node1 = ListNode(1);
  ListNode node2 = ListNode(2);
  ListNode node3 = ListNode(3);
  ListNode node4 = ListNode(4);
  ListNode node5 = ListNode(5);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  node4.next = node5;

  ListNode? node = Solution().getKthFromEnd(node1, 2);

  while (node != null) {
    print(node.val);
    node = node.next;
  }
}
