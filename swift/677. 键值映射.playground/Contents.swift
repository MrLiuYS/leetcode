/*
 677. 键值映射
 https://leetcode-cn.com/problems/map-sum-pairs/
 */
//暴力解决
class MapSum {
    var map: [String: Int]

    init() {
        map = [String: Int]()
    }

    func insert(_ key: String, _ val: Int) {
        map[key] = val
    }

    func sum(_ prefix: String) -> Int {
        var sum = 0

        for key in map.keys {
            if key.starts(with: prefix) {
                sum += map[key]!
            }
        }

        return sum
    }
}

let obj = MapSum()
obj.insert("apple", 3)
obj.sum("ap")
obj.insert("app", 2)
obj.sum("ap")
