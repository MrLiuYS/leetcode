/**
 剑指 Offer 41. 数据流中的中位数
 https://leetcode-cn.com/problems/shu-ju-liu-zhong-de-zhong-wei-shu-lcof/
 */
class MedianFinder {
    var stack = [Int]()

    init() {}

    func addNum(_ num: Int) {
        stack.append(num)
        stack.sort(by: <)
    }

    func findMedian() -> Double {
        if stack.isEmpty {
            return 0
        }

        if stack.count % 2 == 0 {
            let pre = stack[stack.count / 2 - 1]
            let next = stack[stack.count / 2]
            return Double(pre + next) / 2
        } else {
            return Double(stack[stack.count / 2])
        }
    }
}

let obj = MedianFinder()
obj.addNum(6)
obj.findMedian()
obj.addNum(10)
obj.findMedian()
obj.addNum(2)
obj.findMedian()
obj.addNum(6)
obj.findMedian()
obj.addNum(5)
obj.findMedian()
obj.addNum(0)
obj.findMedian()
obj.addNum(6)
obj.findMedian()
obj.addNum(3)
obj.findMedian()
obj.addNum(1)
obj.findMedian()
obj.addNum(0)
obj.findMedian()
obj.addNum(0)
obj.findMedian()
