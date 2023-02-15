//
//  main.swift
//  Exam
//
//  Created by 원동진 on 2023/02/10.
//

import Foundation

//MARK: - a~z까지 출력
//for i in Character("a").asciiValue!...Character("z").asciiValue! {
//var char = Character(UnicodeScalar(i))
//
//print(char)
//
//}
//MARK: - 문자열 하나씩 자르기
//var input : string = readLine()!
//var arr = [Character]()
//for index in 0..<nun.count {
//     var temp = num[num.index(num.startIndex,offsetBy: index)]
//    arr.append(temp)
//}
//
////int 형변환
//var int_arr = arr.amp({(valuie: Character) -> Int in
//    retunr Int(Stirng(value))!
//})
//or
//let input = Array(readLine()!).map{Int(String($0))!}
//MARK: - 문자열 정해진 길이로 자르기
//func sliceString(_ str: String, _ length: Int) -> [String] {
//    var result: [String] = []
//    var temp = ""
//
//    for s in str {
//        temp += String(s)
//        if temp.count >= length {
//            result.append(temp)
//            temp = ""
//        }
//    }
//
//    if temp != "" { result.append(temp) }
//    return result
//}
//MARK: - 크기를 가진 빈배열 생성
//var arr = [Int or String](repeating:0,count:10)
//MARK: - 크기를 가진 이중 배열 생성
//var arr : [[Int or String]] = Array(repeating:Array(repeating:5 , count 5),count:10)
//// or
//var arr = [[Int or String]](repeating:Array(repeating:5 , count 5),count:10)
//MARK: - 이중 배열생성
//var arr = [[Int or Stirng]]()
//var arr : [[Int or String]] = [[]] //-> 사용시 빈배열 하나가 생성된다
//// arr.append 할시 첫번째 배열 다음의 빈배열 이 생성됨
//MARK: - FirstIndex(where:)
//한 배열에 여러가지 값을 가지고 있을경우
//1을 가진 여러가지 배열 요소중 첫번째로 1을 가지는 사람을 찾고싶을경우
//if let index = arr.firstIndex(where: $0.x == “1”))등으로 사용가능
//MARK: - 이중 배열 값 대입
//var graph = [[Int]]()
//for i in 0..<N {
//    graph.append(readLine()!.map{Int(String($0))!})
//}
//MARK: - 배열돌리기
//func rotateKey() {
//        var n = key.size
//        var result = Array(n){IntArray(n) { 0 }}
//
//        for(i in 0 until n) {
//            for(j in 0 until n) {
//                result[j][n-i-1] = key[i][j]
//            }
//        }
//        key = result
//    }
//MARK: - combi
//func combination<T>(_ elements: [T], _ k: Int) -> [[T]] {
//    var result = [[T]]()
//    
//    func combi(_ index: Int, _ now: [T]) {
//        if now.count == k {
//            result.append(now)
//            return
//        }
//        for i in index..<elements.count {
//            combi(i + 1, now + [elements[i]])
//        }
//    }
//    combi(0, [])
//    return result
//}
//MARK: - isprimg
//func isPrime(num: Int) -> Bool {
//    if(num<4) {
//        return num == 1 ? false : true
//    }
//    for i in 2...Int(sqrt(Double(num))) {
//        if(num % i == 0) { return false }
//    }
//    return true
//}
