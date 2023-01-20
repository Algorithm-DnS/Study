//
//  main.swift
//  implement
//
//  Created by 원동진 on 2023/01/16.
//

import Foundation
//MARK: - 구현 예제 4-1
//let N = Int(readLine()!)!
//let input = readLine()!.split(separator: " ")
//let dx = [0,0,-1,1]
//let dy = [-1,1,0,0]
//let dir = ["L","R","U","D"]
//var X = 1
//var Y = 1
//var Nx = 0
//var Ny = 0
//
//
//for i in input{
//    for j in 0..<dir.count{
//        if i == dir[j] {
//            Nx = X + dx[j]
//            Ny = Y + dy[j]
//        }
//
//    }
//    if Nx < 1 || Ny < 1 || Nx > N || Ny > N{
//        continue
//    }
//    X = Nx
//    Y = Ny
//}
//print("\(X) \(Y)")
//
//MARK: - 예제 4-2
//let N = Int(readLine()!)!
//var count = 0
//for i in 0...N{
//    for j in 0...59 {
//        for k in 0...59 {
//           let time = String(i)+String(j)+String(k)
//            if time.contains("3") {
//                count += 1
//            }
//        }
//
//    }
//}
//
//print("\(count)")
//MARK: - 실전문제 2 왕실의 나이트
//struct stepModel {
//    var x : Int
//    var y : Int
//
//}
//
//let input = Array(readLine()!).map{String($0)}
//var x = Character(input[0]).unicodeScalars.first!.value - Character("a").unicodeScalars.first!.value + 1
//var y = input[1]
//let step = [stepModel(x:2,y:1),stepModel(x:-2,y:1),stepModel(x:2,y:-1),stepModel(x:-2,y:-1),stepModel(x:1,y:2),stepModel(x:-1,y:2),stepModel(x:1,y:-2),stepModel(x:-1,y:-2)]
//var count = 0
//for i in step{
//    let nextX = Int(x) + i.x
//    let nextY = Int(y)! + i.y
//    if 1 ... 8 ~= nextX && 1...8 ~= nextY {
//        count+=1
//    }
//}
//print("\(count)")
//MARK: - Q07 럭키스트레이트
//let input = Array(readLine()!).map{Int(String($0))!}
//let slicePoint = input.count/2
//let firstSlice = input.prefix(slicePoint)
//var firstSum = 0
//let secondSlice = input.suffix(slicePoint)
//var secondSum = 0
//for i in 0..<slicePoint{
//    firstSum += firstSlice[i]
//    secondSum += secondSlice[i+slicePoint]
//}
//if firstSum == secondSum {
//    print("LUCKY")
//}else{
//    print("READY")
//}
MARK: - Q08 문자열 재정렬
var sum = 0
var input = Array(readLine()!).map{String($0)}.sorted()
var result = ""
let num = input.compactMap{String in Int(String)}
for i in num{
    sum+=i
}
input.removeSubrange(0..<num.count)
for i in input{
    result += i
}
print("\(result)\(sum)")
