//
//  main.swift
//  practiceProblem
//
//  Created by 원동진 on 2023/01/10.
//

import Foundation
//MARK: - 그리디 A01
//let N = Int(readLine()!)!
//var input = readLine()!.split(separator: " ").map{Int($0)!}
//var result = 0
//var count = 0
//input.sort()
//for i in input {
//    count += 1
//    if count >= i {
//        result += 1
//        count = 0
//    }
//}
//print("\(result)")
//MARK: - 그리디 A02
var input = Array(readLine()!).map{Int(String($0))!}
input.sort()
var result = 0

for i in input{
    if result == 0 {
        result+=i
    }else {
        result*=i
    }
}
print("\(result)")

