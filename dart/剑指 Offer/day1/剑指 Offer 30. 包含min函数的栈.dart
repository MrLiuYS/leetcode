/**dart
 * 剑指 Offer 30. 包含min函数的栈
 * https://leetcode-cn.com/problems/bao-han-minhan-shu-de-zhan-lcof/
 */
import 'dart:math' as math;

class MinStack {
  var _stack = <int>[];

  int? _minNum;

  MinStack() {}

  push(int x) {
    _stack.add(x);
    _minNum = math.min(x, _minNum ?? double.maxFinite.toInt());
  }

  pop() {
    var last = _stack.removeLast();
    if (_minNum == last && _stack.isNotEmpty) {
      _minNum =
          _stack.reduce((value, element) => value > element ? element : value);
    } else {
      _minNum = null;
    }
  }

  int top() {
    if (_stack.isEmpty) {
      return 0;
    } else {
      return _stack.last;
    }
  }

  int min() {
    return _minNum ?? double.minPositive.toInt();
  }
}

main(List<String> args) {
  var obj = MinStack();
  obj.push(-2);
  obj.push(0);
  obj.push(-3);
  obj.min();
  obj.pop();
  print(obj.top());
  print(obj.min());
}
