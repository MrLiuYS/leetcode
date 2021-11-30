//
//  main.swift
//  leetcode-line-tool
//
//  Created by 刘永生 on 2021/8/26.
//

import Foundation



class Solution {
    func maxPower(_ s: String) -> Int {
        guard !s.isEmpty else {
            return 0
        }
        if s.count < 2 {
            return 1
        }

        let array = Array(s)

        var left = 0, right = 0

        var result = 0
        var tempMax = 0

        while left < array.count - 1 , right < array.count {
            if array[left] == array[right] {
                tempMax += 1
                result = max(tempMax, result)
                right += 1
            } else {
                left += 1
                right = left
                tempMax = 0
            }
        }

        return result
    }
}

print(Solution().maxPower("ccbccbb"))


//var value: Int? = 10
//var value2: Int?? = 20
//var value3: Int??? = 30
//
//print(value, value2, value3)
// print("Hello, World!")
//
// var num1 : Int? = 5
// num1? = 10
//
//
// var num3: Int? = nil
// var num2 : Int?? = num3
// num2? = 10
//
//
// var num4 : Int?? = nil
// num4? =  10
//
// print(num1 , num2 , num4)

// struct Person {
//    var name: String {
//        willSet {
////            print(newValue)
////            print($0)
//        }
//    }
// }
