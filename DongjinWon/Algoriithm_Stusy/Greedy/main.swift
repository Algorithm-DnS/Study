//
//  main.swift
//  Greedy
//
//  Created by 원동진 on 2023/01/03.
//
import Foundation
//MARK: -예제 3-1
// 1트 -> Pass
//var count = 0
//var N = Int(readLine()!)!
//let cointype = [500,100,50,10]
//for i in cointype {
//    count += N / i
//    N = N % i
//}
//print(count)
//MARK: - 예제 3-2 M이 작을경우
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let N = input[0]
//var M = input[1]
//let K = input[2]
//var arr = readLine()!.split(separator: " ").map{Int($0)!}
//arr.sort()
//let first = arr[N-1]
//let second = arr[N-2]
//var answer = 0
//while M != 0 {
//    for _ in 0..<K{
//        answer += first
//        M -= 1
//    }
//    answer += second
//    M -= 1
//}
//print("\(answer)")
//MARK: - 예제 3-2 M이 클경우
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let N = input[0]
//var M = input[1]
//let K = input[2]
//var arr = readLine()!.split(separator: " ").map{Int($0)!}
//arr.sort()
//let first = arr[N-1]
//let second = arr[N-2]
//let firestCount = Int(M/(K+1)) * K + (M % (K+1))
//
//var answer = 0
//answer += firestCount * first // 가장 큰수
//answer += (M-firestCount) * second // 가장 작은수
//print("\(answer)")
//MARK: -예제 3-3
//let input = readLine()!.split(separator: " ").map({Int($0)!})
//let N = input[0]
//let M = input[1]
//var minarr : [Int] = []
//for _ in 0..<N {
//    let inputarr = readLine()!.split(separator: " ").map({Int($0)!})
//    minarr.append(inputarr.min()!)
//}
//print("\(minarr.max() ?? 0)")
//MARK: - 예제 3-4
let input = readLine()!.split(separator:" ").map{Int($0)!}
var N = input[0]
let K = input[1]
var count = 0
while true {
    if N%K != 0 {
        N -= 1
        count += 1
    }else{
        N = N/K
        count += 1
    }
    
    if N == 1 {
        break
    }
}
print("\(count)")
