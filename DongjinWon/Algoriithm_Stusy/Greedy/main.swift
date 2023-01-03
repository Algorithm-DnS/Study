//
//  main.swift
//  Greedy
//
//  Created by 원동진 on 2023/01/03.
//
import Foundation
//MARK: -예제 3-1
// 1트 -> Pass
var count = 0
var N = Int(readLine()!)!
let cointype = [500,100,50,10]
for i in cointype {
    count += N / i
    N = N % i
}
print(count)
