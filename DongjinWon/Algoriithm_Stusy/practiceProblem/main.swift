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
//var input = Array(readLine()!).map{Int(String($0))!}
//input.sort()
//var result = 0
//
//for i in input{
//    if i == 1 || result <= 1 {
//        result+=i
//    }else {
//        result*=i
//    }
//}
//print("\(result)")
//
//MARK: - 그리디 A03
//var input = Array(readLine()!)
//var count0 = 0
//var count1 = 0
//var sum = 0
//
//if input[0] == "0" {
//    count0+=1
//}else {
//    count1+=1
//}
//for i in 0..<input.count-1 {
//    if input[i] != input[i+1]{
//        if input[i+1] == "0"{
//            count0+=1
//        }else {
//            count1+=1
//        }
//    }
//}
//print("\(min(count0, count1))")

//MARK: - 그리드 A04
//let N = Int(readLine()!)!
//var input = readLine()!.split(separator: " ").map{Int($0)!}
//var target = 1
//input.sort()
//for i in input {
//    if target < i {
//        break
//    }
//    target+=i
//}
//print("\(target)")
//MARK: - 그리드 A05 - 내풀이
//let input = readLine()!.split(separator:" ").map{Int($0)!}
//let N = input[0]
//let M = input[1]
//var result = 0
//let K  = readLine()!.split(separator:" ").map{Int($0)!}
//for i in 0..<N{
//    for j in i+1..<N{
//        if K[i] != K[j] {
//            result+=1
//        }
//    }
//}
//print("\(result)")
//MARK: - 해설풀이
//let input = readLine()!.split(separator:" ").map{Int($0)!}
//let K  = readLine()!.split(separator:" ").map{Int($0)!}
//var N = input[0]
//let M = input[1]
//var arr = [Int](repeating: 0, count: 10)
//var result = 0
//for i in K {
//    arr[i]+=1
//}
//for i in 1...M{
//    N -= arr[i]
//    result+=arr[i]*N
//}
//print("\(result)")
