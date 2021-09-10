/**dart
 * 剑指 Offer 52. 两个链表的第一个公共节点
 * https://leetcode-cn.com/problems/liang-ge-lian-biao-de-di-yi-ge-gong-gong-jie-dian-lcof/
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
  ListNode? getIntersectionNode(ListNode? headA, ListNode? headB) {
    if (headA == null || headB == null) {
      return null;
    }

    ListNode? pA = headA, pB = headB;

    while (pA != pB) {
      pA = (pA == null) ? headB : pA.next;
      pB = (pB == null) ? headA : pB.next;
    }

    return pA;
  }
}

main(List<String> args) {
  var nodea1 = ListNode(4);
  var nodea2 = ListNode(1);
  var nodea3 = ListNode(8);
  var nodea4 = ListNode(4);
  var nodea5 = ListNode(5);

  nodea1.next = nodea2;
  nodea2.next = nodea3;
  nodea3.next = nodea4;
  nodea4.next = nodea5;
  var nodeb1 = ListNode(5);
  var nodeb2 = ListNode(0);
  var nodeb3 = ListNode(1);
  nodeb1.next = nodeb2;
  nodeb2.next = nodeb3;
  nodeb3.next = nodea3;

  print(Solution().getIntersectionNode(nodea1, nodeb1)?.val);
}
